.class Lcom/facebook/widget/LoginButton$LoginClickListener;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/LoginButton;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/LoginButton;)V
    .locals 0
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/widget/LoginButton$LoginClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 799
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton$LoginClickListener;-><init>(Lcom/facebook/widget/LoginButton;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18
    .parameter "v"

    .prologue
    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 804
    .local v5, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    #getter for: Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton;->access$1(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/SessionTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v11

    .line 806
    .local v11, openSession:Lcom/facebook/Session;
    if-eqz v11, :cond_4

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    #getter for: Lcom/facebook/widget/LoginButton;->confirmLogout:Z
    invoke-static {v14}, Lcom/facebook/widget/LoginButton;->access$2(Lcom/facebook/widget/LoginButton;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/facebook/android/R$string;->com_facebook_loginview_log_out_action:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 811
    .local v8, logout:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/facebook/android/R$string;->com_facebook_loginview_cancel_action:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 813
    .local v4, cancel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    #getter for: Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton;->access$3(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;

    move-result-object v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    #getter for: Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton;->access$3(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;

    move-result-object v14

    invoke-interface {v14}, Lcom/facebook/model/GraphUser;->getName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/facebook/android/R$string;->com_facebook_loginview_logged_in_as:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object/from16 v17, v0

    #getter for: Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;
    invoke-static/range {v17 .. v17}, Lcom/facebook/widget/LoginButton;->access$3(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/facebook/model/GraphUser;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 818
    .local v9, message:Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 819
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 820
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 821
    new-instance v15, Lcom/facebook/widget/LoginButton$LoginClickListener$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/facebook/widget/LoginButton$LoginClickListener$1;-><init>(Lcom/facebook/widget/LoginButton$LoginClickListener;Lcom/facebook/Session;)V

    invoke-virtual {v14, v8, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 826
    const/4 v15, 0x0

    invoke-virtual {v14, v4, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 827
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    .line 861
    .end local v3           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #cancel:Ljava/lang/String;
    .end local v5           #context:Landroid/content/Context;
    .end local v8           #logout:Ljava/lang/String;
    .end local v9           #message:Ljava/lang/String;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object v7

    .line 863
    .local v7, logger:Lcom/facebook/AppEventsLogger;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 864
    .local v12, parameters:Landroid/os/Bundle;
    const-string v14, "logging_in"

    if-eqz v11, :cond_a

    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    #getter for: Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton;->access$7(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15, v12}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    #getter for: Lcom/facebook/widget/LoginButton;->listenerCallback:Landroid/view/View$OnClickListener;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton;->access$8(Lcom/facebook/widget/LoginButton;)Landroid/view/View$OnClickListener;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    #getter for: Lcom/facebook/widget/LoginButton;->listenerCallback:Landroid/view/View$OnClickListener;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton;->access$8(Lcom/facebook/widget/LoginButton;)Landroid/view/View$OnClickListener;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 871
    :cond_1
    return-void

    .line 816
    .end local v7           #logger:Lcom/facebook/AppEventsLogger;
    .end local v12           #parameters:Landroid/os/Bundle;
    .restart local v4       #cancel:Ljava/lang/String;
    .restart local v5       #context:Landroid/content/Context;
    .restart local v8       #logout:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/facebook/android/R$string;->com_facebook_loginview_logged_in_using_facebook:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #message:Ljava/lang/String;
    goto :goto_0

    .line 829
    .end local v4           #cancel:Ljava/lang/String;
    .end local v8           #logout:Ljava/lang/String;
    .end local v9           #message:Ljava/lang/String;
    :cond_3
    invoke-virtual {v11}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    goto :goto_1

    .line 832
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    #getter for: Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton;->access$1(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/SessionTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v6

    .line 833
    .local v6, currentSession:Lcom/facebook/Session;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 834
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    #getter for: Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton;->access$1(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/SessionTracker;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/facebook/internal/SessionTracker;->setSession(Lcom/facebook/Session;)V

    .line 835
    new-instance v14, Lcom/facebook/Session$Builder;

    invoke-direct {v14, v5}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v15, v0

    #getter for: Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;
    invoke-static {v15}, Lcom/facebook/widget/LoginButton;->access$4(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v13

    .line 836
    .local v13, session:Lcom/facebook/Session;
    invoke-static {v13}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 837
    move-object v6, v13

    .line 839
    .end local v13           #session:Lcom/facebook/Session;
    :cond_6
    invoke-virtual {v6}, Lcom/facebook/Session;->isOpened()Z

    move-result v14

    if-nez v14, :cond_0

    .line 840
    const/4 v10, 0x0

    .line 841
    .local v10, openRequest:Lcom/facebook/Session$OpenRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    #getter for: Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton;->access$5(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 842
    new-instance v10, Lcom/facebook/Session$OpenRequest;

    .end local v10           #openRequest:Lcom/facebook/Session$OpenRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    #getter for: Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton;->access$5(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;

    move-result-object v14

    invoke-direct {v10, v14}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 847
    .end local v5           #context:Landroid/content/Context;
    .restart local v10       #openRequest:Lcom/facebook/Session$OpenRequest;
    :cond_7
    :goto_3
    if-eqz v10, :cond_0

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    #getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton;->access$6(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    move-result-object v14

    #getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/SessionDefaultAudience;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$0(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/SessionDefaultAudience;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/facebook/Session$OpenRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$OpenRequest;

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    #getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton;->access$6(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    move-result-object v14

    #getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$1(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v14, v0

    #getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton;->access$6(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    move-result-object v14

    #getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/SessionLoginBehavior;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$2(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/SessionLoginBehavior;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    .line 852
    sget-object v14, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object v15, v0

    #getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    invoke-static {v15}, Lcom/facebook/widget/LoginButton;->access$6(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    move-result-object v15

    #getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;
    invoke-static {v15}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$3(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/internal/SessionAuthorizationType;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 853
    invoke-virtual {v6, v10}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V

    goto/16 :goto_1

    .line 843
    .restart local v5       #context:Landroid/content/Context;
    :cond_8
    instance-of v14, v5, Landroid/app/Activity;

    if-eqz v14, :cond_7

    .line 844
    new-instance v10, Lcom/facebook/Session$OpenRequest;

    .end local v10           #openRequest:Lcom/facebook/Session$OpenRequest;
    check-cast v5, Landroid/app/Activity;

    .end local v5           #context:Landroid/content/Context;
    invoke-direct {v10, v5}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .restart local v10       #openRequest:Lcom/facebook/Session$OpenRequest;
    goto :goto_3

    .line 855
    :cond_9
    invoke-virtual {v6, v10}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto/16 :goto_1

    .line 864
    .end local v6           #currentSession:Lcom/facebook/Session;
    .end local v10           #openRequest:Lcom/facebook/Session$OpenRequest;
    .restart local v7       #logger:Lcom/facebook/AppEventsLogger;
    .restart local v12       #parameters:Landroid/os/Bundle;
    :cond_a
    const/4 v15, 0x1

    goto/16 :goto_2
.end method
