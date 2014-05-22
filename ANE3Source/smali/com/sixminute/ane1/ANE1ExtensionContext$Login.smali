.class public Lcom/sixminute/ane1/ANE1ExtensionContext$Login;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sixminute/ane1/ANE1ExtensionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Login"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5

    const/4 v4, 0x0

    const-string v0, "Login.call"

    invoke-static {v0}, Lcom/sixminute/ane1/ANE1Extension;->DLog(Ljava/lang/String;)V

    const-string v0, "test resource"

    invoke-static {v0}, Lcom/sixminute/ane1/ANE1Extension;->DLog(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$layout;->com_facebook_login_activity_layout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sixminute/ane1/ANE1Extension;->DLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "test resource over"

    invoke-static {v0}, Lcom/sixminute/ane1/ANE1Extension;->DLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/sixminute/ane1/ANE1ExtensionContext;->access$000()Lcom/sixminute/ane1/ANE1ExtensionContext$SessionStatusCallback;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sixminute/ane1/ANE1ExtensionContext$SessionStatusCallback;

    invoke-direct {v0}, Lcom/sixminute/ane1/ANE1ExtensionContext$SessionStatusCallback;-><init>()V

    invoke-static {v0}, Lcom/sixminute/ane1/ANE1ExtensionContext;->access$002(Lcom/sixminute/ane1/ANE1ExtensionContext$SessionStatusCallback;)Lcom/sixminute/ane1/ANE1ExtensionContext$SessionStatusCallback;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    new-instance v1, Lcom/facebook/Session$Builder;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "245225925648849"

    invoke-virtual {v1, v2}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", closed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/Session;->isClosed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sixminute/ane1/ANE1Extension;->DLog(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/facebook/Session;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/facebook/Session$OpenRequest;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-static {}, Lcom/sixminute/ane1/ANE1ExtensionContext;->access$000()Lcom/sixminute/ane1/ANE1ExtensionContext$SessionStatusCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    :cond_1
    :goto_1
    return-object v4

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sixminute/ane1/ANE1Extension;->DLog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/facebook/Session;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Lcom/sixminute/ane1/ANE1ExtensionContext;->access$000()Lcom/sixminute/ane1/ANE1ExtensionContext$SessionStatusCallback;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    goto :goto_1
.end method
