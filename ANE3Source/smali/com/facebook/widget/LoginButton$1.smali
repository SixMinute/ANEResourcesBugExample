.class Lcom/facebook/widget/LoginButton$1;
.super Landroid/os/AsyncTask;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/LoginButton;->checkNuxSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/facebook/internal/Utility$FetchedAppSettings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/LoginButton;

.field private final synthetic val$appId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/widget/LoginButton;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$1;->this$0:Lcom/facebook/widget/LoginButton;

    iput-object p2, p0, Lcom/facebook/widget/LoginButton$1;->val$appId:Ljava/lang/String;

    .line 673
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/facebook/internal/Utility$FetchedAppSettings;
    .locals 3
    .parameter "params"

    .prologue
    .line 676
    iget-object v1, p0, Lcom/facebook/widget/LoginButton$1;->val$appId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object v0

    .line 677
    .local v0, settings:Lcom/facebook/internal/Utility$FetchedAppSettings;
    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/LoginButton$1;->doInBackground([Ljava/lang/Void;)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/facebook/internal/Utility$FetchedAppSettings;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$1;->this$0:Lcom/facebook/widget/LoginButton;

    #calls: Lcom/facebook/widget/LoginButton;->showNuxPerSettings(Lcom/facebook/internal/Utility$FetchedAppSettings;)V
    invoke-static {v0, p1}, Lcom/facebook/widget/LoginButton;->access$11(Lcom/facebook/widget/LoginButton;Lcom/facebook/internal/Utility$FetchedAppSettings;)V

    .line 683
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/internal/Utility$FetchedAppSettings;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/LoginButton$1;->onPostExecute(Lcom/facebook/internal/Utility$FetchedAppSettings;)V

    return-void
.end method
