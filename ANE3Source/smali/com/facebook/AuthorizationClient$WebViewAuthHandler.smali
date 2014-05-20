.class Lcom/facebook/AuthorizationClient$WebViewAuthHandler;
.super Lcom/facebook/AuthorizationClient$AuthHandler;
.source "AuthorizationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewAuthHandler"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private applicationId:Ljava/lang/String;

.field private e2e:Ljava/lang/String;

.field private transient loginDialog:Lcom/facebook/widget/WebDialog;

.field final synthetic this$0:Lcom/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
    .locals 0
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$AuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    return-void
.end method

.method private loadCookieToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 688
    iget-object v2, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v2}, Lcom/facebook/AuthorizationClient;->getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/AuthorizationClient$StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    .line 690
    .local v0, context:Landroid/content/Context;
    const-string v2, "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    .line 691
    const/4 v3, 0x0

    .line 689
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 692
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "TOKEN"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private saveCookieToken(Ljava/lang/String;)V
    .locals 5
    .parameter "token"

    .prologue
    .line 676
    iget-object v3, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v3}, Lcom/facebook/AuthorizationClient;->getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/AuthorizationClient$StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    .line 678
    .local v0, context:Landroid/content/Context;
    const-string v3, "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    .line 679
    const/4 v4, 0x0

    .line 677
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 680
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 681
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "TOKEN"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 682
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 683
    const-string v3, "Facebook-AuthorizationClient"

    const-string v4, "Could not update saved web view auth handler token."

    invoke-static {v3, v4}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_0
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->loginDialog:Lcom/facebook/widget/WebDialog;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->loginDialog:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->dismiss()V

    .line 585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->loginDialog:Lcom/facebook/widget/WebDialog;

    .line 587
    :cond_0
    return-void
.end method

.method getNameForLogging()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    const-string v0, "web_view"

    return-object v0
.end method

.method needsInternetPermission()Z
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x1

    return v0
.end method

.method needsRestart()Z
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x1

    return v0
.end method

.method onWebDialogComplete(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 11
    .parameter "request"
    .parameter "values"
    .parameter "error"

    .prologue
    const/4 v10, 0x0

    const-string v7, "e2e"

    .line 634
    if-eqz p2, :cond_2

    .line 636
    const-string v6, "e2e"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 637
    const-string v6, "e2e"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    .line 641
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/facebook/AccessTokenSource;->WEB_VIEW:Lcom/facebook/AccessTokenSource;

    invoke-static {v6, p2, v7}, Lcom/facebook/AccessToken;->createFromWebBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v5

    .line 642
    .local v5, token:Lcom/facebook/AccessToken;
    iget-object v6, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v6, v6, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v6, v5}, Lcom/facebook/AuthorizationClient$Result;->createTokenResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v2

    .line 647
    .local v2, outcome:Lcom/facebook/AuthorizationClient$Result;
    iget-object v6, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v6, v6, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v4

    .line 648
    .local v4, syncManager:Landroid/webkit/CookieSyncManager;
    invoke-virtual {v4}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 649
    invoke-virtual {v5}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->saveCookieToken(Ljava/lang/String;)V

    .line 668
    .end local v4           #syncManager:Landroid/webkit/CookieSyncManager;
    .end local v5           #token:Lcom/facebook/AccessToken;
    .end local p3
    :goto_0
    iget-object v6, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    invoke-static {v6}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 669
    iget-object v6, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v7, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->applicationId:Ljava/lang/String;

    iget-object v8, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    #calls: Lcom/facebook/AuthorizationClient;->logWebLoginCompleted(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/facebook/AuthorizationClient;->access$1(Lcom/facebook/AuthorizationClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_1
    iget-object v6, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v6, v2}, Lcom/facebook/AuthorizationClient;->completeAndValidate(Lcom/facebook/AuthorizationClient$Result;)V

    .line 673
    return-void

    .line 651
    .end local v2           #outcome:Lcom/facebook/AuthorizationClient$Result;
    .restart local p3
    :cond_2
    instance-of v6, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v6, :cond_3

    .line 652
    iget-object v6, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v6, v6, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v7, "User canceled log in."

    invoke-static {v6, v7}, Lcom/facebook/AuthorizationClient$Result;->createCancelResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v2

    .line 653
    .restart local v2       #outcome:Lcom/facebook/AuthorizationClient$Result;
    goto :goto_0

    .line 655
    .end local v2           #outcome:Lcom/facebook/AuthorizationClient$Result;
    :cond_3
    iput-object v10, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, errorCode:Ljava/lang/String;
    invoke-virtual {p3}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, errorMessage:Ljava/lang/String;
    instance-of v6, p3, Lcom/facebook/FacebookServiceException;

    if-eqz v6, :cond_4

    .line 660
    check-cast p3, Lcom/facebook/FacebookServiceException;

    .end local p3
    invoke-virtual {p3}, Lcom/facebook/FacebookServiceException;->getRequestError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    .line 661
    .local v3, requestError:Lcom/facebook/FacebookRequestError;
    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    .end local v3           #requestError:Lcom/facebook/FacebookRequestError;
    :cond_4
    iget-object v6, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v6, v6, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v6, v10, v1, v0}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v2

    .restart local v2       #outcome:Lcom/facebook/AuthorizationClient$Result;
    goto :goto_0
.end method

.method tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
    .locals 9
    .parameter "request"

    .prologue
    const-string v8, "scope"

    const-string v7, "access_token"

    .line 591
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->applicationId:Ljava/lang/String;

    .line 592
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 593
    .local v2, parameters:Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 594
    const-string v5, ","

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, scope:Ljava/lang/String;
    const-string v5, "scope"

    invoke-virtual {v2, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v5, "scope"

    invoke-virtual {p0, v8, v4}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 599
    .end local v4           #scope:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPreviousAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, previousToken:Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->loadCookieToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 601
    const-string v5, "access_token"

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v5, "access_token"

    const-string v5, "1"

    invoke-virtual {p0, v7, v5}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 610
    :goto_0
    new-instance v1, Lcom/facebook/AuthorizationClient$WebViewAuthHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler$1;-><init>(Lcom/facebook/AuthorizationClient$WebViewAuthHandler;Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    .line 617
    .local v1, listener:Lcom/facebook/widget/WebDialog$OnCompleteListener;
    #calls: Lcom/facebook/AuthorizationClient;->getE2E()Ljava/lang/String;
    invoke-static {}, Lcom/facebook/AuthorizationClient;->access$0()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    .line 618
    const-string v5, "e2e"

    iget-object v6, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 621
    new-instance v5, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;

    iget-object v6, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v6}, Lcom/facebook/AuthorizationClient;->getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    move-result-object v6

    invoke-interface {v6}, Lcom/facebook/AuthorizationClient$StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->applicationId:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v2}, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 622
    iget-object v6, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->setE2E(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$AuthDialogBuilder;

    move-result-object v5

    .line 623
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isRerequest()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->setIsRerequest(Z)Lcom/facebook/AuthorizationClient$AuthDialogBuilder;

    move-result-object v5

    .line 624
    invoke-virtual {v5, v1}, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/WebDialog$Builder;

    .line 625
    .local v0, builder:Lcom/facebook/widget/WebDialog$Builder;
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog$Builder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->loginDialog:Lcom/facebook/widget/WebDialog;

    .line 626
    iget-object v5, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->loginDialog:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v5}, Lcom/facebook/widget/WebDialog;->show()V

    .line 628
    const/4 v5, 0x1

    return v5

    .line 606
    .end local v0           #builder:Lcom/facebook/widget/WebDialog$Builder;
    .end local v1           #listener:Lcom/facebook/widget/WebDialog$OnCompleteListener;
    :cond_1
    iget-object v5, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v5, v5, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/facebook/internal/Utility;->clearFacebookCookies(Landroid/content/Context;)V

    .line 607
    const-string v5, "access_token"

    const-string v5, "0"

    invoke-virtual {p0, v7, v5}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
