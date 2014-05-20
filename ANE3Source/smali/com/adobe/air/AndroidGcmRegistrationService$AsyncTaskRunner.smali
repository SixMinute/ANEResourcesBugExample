.class Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;
.super Landroid/os/AsyncTask;
.source "AndroidGcmRegistrationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidGcmRegistrationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTaskRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidGcmRegistrationService;


# direct methods
.method private constructor <init>(Lcom/adobe/air/AndroidGcmRegistrationService;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;->this$0:Lcom/adobe/air/AndroidGcmRegistrationService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/air/AndroidGcmRegistrationService;Lcom/adobe/air/AndroidGcmRegistrationService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;-><init>(Lcom/adobe/air/AndroidGcmRegistrationService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 184
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 6
    .parameter

    .prologue
    const v5, 0x493e0

    .line 192
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 195
    iget-object v0, p0, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;->this$0:Lcom/adobe/air/AndroidGcmRegistrationService;

    iget-object v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;->this$0:Lcom/adobe/air/AndroidGcmRegistrationService;

    #getter for: Lcom/adobe/air/AndroidGcmRegistrationService;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    invoke-static {v1}, Lcom/adobe/air/AndroidGcmRegistrationService;->access$300(Lcom/adobe/air/AndroidGcmRegistrationService;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/adobe/air/AndroidGcmRegistrationService;->access$200()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/adobe/air/AndroidGcmRegistrationService;->mRegId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/adobe/air/AndroidGcmRegistrationService;->access$102(Lcom/adobe/air/AndroidGcmRegistrationService;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;->this$0:Lcom/adobe/air/AndroidGcmRegistrationService;

    #getter for: Lcom/adobe/air/AndroidGcmRegistrationService;->mRegId:Ljava/lang/String;
    invoke-static {v0}, Lcom/adobe/air/AndroidGcmRegistrationService;->access$100(Lcom/adobe/air/AndroidGcmRegistrationService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;->this$0:Lcom/adobe/air/AndroidGcmRegistrationService;

    const v1, 0x493e0

    #calls: Lcom/adobe/air/AndroidGcmRegistrationService;->registerInBackground(I)V
    invoke-static {v0, v1}, Lcom/adobe/air/AndroidGcmRegistrationService;->access$400(Lcom/adobe/air/AndroidGcmRegistrationService;I)V

    .line 211
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;->this$0:Lcom/adobe/air/AndroidGcmRegistrationService;

    #calls: Lcom/adobe/air/AndroidGcmRegistrationService;->sendRegistrationIdToAws()V
    invoke-static {v0}, Lcom/adobe/air/AndroidGcmRegistrationService;->access$500(Lcom/adobe/air/AndroidGcmRegistrationService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 209
    iget-object v0, p0, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;->this$0:Lcom/adobe/air/AndroidGcmRegistrationService;

    #calls: Lcom/adobe/air/AndroidGcmRegistrationService;->registerInBackground(I)V
    invoke-static {v0, v5}, Lcom/adobe/air/AndroidGcmRegistrationService;->access$400(Lcom/adobe/air/AndroidGcmRegistrationService;I)V

    goto :goto_0
.end method
