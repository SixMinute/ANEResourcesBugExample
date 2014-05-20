.class public Lcom/facebook/widget/LoginButton;
.super Landroid/widget/Button;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/LoginButton$LoginButtonCallback;,
        Lcom/facebook/widget/LoginButton$LoginButtonProperties;,
        Lcom/facebook/widget/LoginButton$LoginClickListener;,
        Lcom/facebook/widget/LoginButton$OnErrorListener;,
        Lcom/facebook/widget/LoginButton$ToolTipMode;,
        Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private applicationId:Ljava/lang/String;

.field private confirmLogout:Z

.field private fetchUserInfo:Z

.field private listenerCallback:Landroid/view/View$OnClickListener;

.field private loginLogoutEventName:Ljava/lang/String;

.field private loginText:Ljava/lang/String;

.field private logoutText:Ljava/lang/String;

.field private nuxChecked:Z

.field private nuxDisplayTime:J

.field private nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

.field private nuxPopup:Lcom/facebook/widget/ToolTipPopup;

.field private nuxStyle:Lcom/facebook/widget/ToolTipPopup$Style;

.field private parentFragment:Landroid/support/v4/app/Fragment;

.field private properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

.field private sessionTracker:Lcom/facebook/internal/SessionTracker;

.field private user:Lcom/facebook/model/GraphUser;

.field private userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

.field private userInfoSession:Lcom/facebook/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/facebook/widget/LoginButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/widget/LoginButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 80
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    .line 83
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    .line 90
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-direct {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .line 91
    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/facebook/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/widget/ToolTipPopup$Style;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    .line 95
    sget-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->DEFAULT:Lcom/facebook/widget/LoginButton$ToolTipMode;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    .line 96
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    .line 218
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    .line 220
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->finishInit()V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 229
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    .line 83
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    .line 90
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-direct {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .line 91
    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/facebook/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/widget/ToolTipPopup$Style;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    .line 95
    sget-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->DEFAULT:Lcom/facebook/widget/LoginButton$ToolTipMode;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    .line 96
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    .line 231
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-nez v0, :cond_0

    .line 235
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setGravity(I)V

    .line 236
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$color;->com_facebook_loginview_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setTextColor(I)V

    .line 238
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$dimen;->com_facebook_loginview_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 237
    invoke-virtual {p0, v2, v0}, Lcom/facebook/widget/LoginButton;->setTextSize(IF)V

    .line 239
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 240
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$color;->com_facebook_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setBackgroundColor(I)V

    .line 245
    const-string v0, "Log in with Facebook"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    .line 257
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/facebook/widget/LoginButton;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 258
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    .line 261
    :cond_1
    return-void

    .line 247
    :cond_2
    sget v0, Lcom/facebook/android/R$drawable;->com_facebook_button_blue:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setBackgroundResource(I)V

    .line 248
    sget v0, Lcom/facebook/android/R$drawable;->com_facebook_inverse_icon:I

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/facebook/widget/LoginButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 250
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$dimen;->com_facebook_loginview_compound_drawable_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 249
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setCompoundDrawablePadding(I)V

    .line 251
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$dimen;->com_facebook_loginview_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 252
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/android/R$dimen;->com_facebook_loginview_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 253
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/android/R$dimen;->com_facebook_loginview_padding_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 254
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/android/R$dimen;->com_facebook_loginview_padding_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 251
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/facebook/widget/LoginButton;->setPadding(IIII)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    .line 83
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    .line 90
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-direct {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .line 91
    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/facebook/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/widget/ToolTipPopup$Style;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    .line 95
    sget-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->DEFAULT:Lcom/facebook/widget/LoginButton$ToolTipMode;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    .line 96
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    .line 270
    invoke-direct {p0, p2}, Lcom/facebook/widget/LoginButton;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 271
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    .line 272
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/facebook/widget/LoginButton;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/SessionTracker;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    return-object v0
.end method

.method static synthetic access$10(Lcom/facebook/widget/LoginButton;)V
    .locals 0
    .parameter

    .prologue
    .line 730
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    return-void
.end method

.method static synthetic access$11(Lcom/facebook/widget/LoginButton;Lcom/facebook/internal/Utility$FetchedAppSettings;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 652
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->showNuxPerSettings(Lcom/facebook/internal/Utility$FetchedAppSettings;)V

    return-void
.end method

.method static synthetic access$12(Lcom/facebook/widget/LoginButton;Lcom/facebook/model/GraphUser;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    return-void
.end method

.method static synthetic access$13(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/facebook/widget/LoginButton;)Z
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->confirmLogout:Z

    return v0
.end method

.method static synthetic access$3(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    return-object v0
.end method

.method static synthetic access$4(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$6(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    return-object v0
.end method

.method static synthetic access$7(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/facebook/widget/LoginButton;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->listenerCallback:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$9(Lcom/facebook/widget/LoginButton;)V
    .locals 0
    .parameter

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    return-void
.end method

.method private checkNuxSettings()V
    .locals 5

    .prologue
    .line 667
    iget-object v3, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    sget-object v4, Lcom/facebook/widget/LoginButton$ToolTipMode;->DISPLAY_ALWAYS:Lcom/facebook/widget/LoginButton$ToolTipMode;

    if-ne v3, v4, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/android/R$string;->com_facebook_tooltip_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 669
    .local v1, nuxString:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/facebook/widget/LoginButton;->displayNux(Ljava/lang/String;)V

    .line 688
    .end local v1           #nuxString:Ljava/lang/String;
    :goto_0
    return-void

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, appId:Ljava/lang/String;
    new-instance v2, Lcom/facebook/widget/LoginButton$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/widget/LoginButton$1;-><init>(Lcom/facebook/widget/LoginButton;Ljava/lang/String;)V

    .line 685
    .local v2, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/facebook/internal/Utility$FetchedAppSettings;>;"
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private displayNux(Ljava/lang/String;)V
    .locals 3
    .parameter "nuxString"

    .prologue
    .line 660
    new-instance v0, Lcom/facebook/widget/ToolTipPopup;

    invoke-direct {v0, p1, p0}, Lcom/facebook/widget/ToolTipPopup;-><init>(Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/ToolTipPopup;

    .line 661
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/ToolTipPopup;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/ToolTipPopup;->setStyle(Lcom/facebook/widget/ToolTipPopup$Style;)V

    .line 662
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/ToolTipPopup;

    iget-wide v1, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/ToolTipPopup;->setNuxDisplayTime(J)V

    .line 663
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/ToolTipPopup;

    invoke-virtual {v0}, Lcom/facebook/widget/ToolTipPopup;->show()V

    .line 664
    return-void
.end method

.method private fetchUserInfo()V
    .locals 4

    .prologue
    .line 759
    iget-boolean v2, p0, Lcom/facebook/widget/LoginButton;->fetchUserInfo:Z

    if-eqz v2, :cond_0

    .line 760
    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v2}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    .line 761
    .local v0, currentSession:Lcom/facebook/Session;
    if-eqz v0, :cond_1

    .line 762
    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    if-eq v0, v2, :cond_0

    .line 763
    new-instance v2, Lcom/facebook/widget/LoginButton$2;

    invoke-direct {v2, p0, v0}, Lcom/facebook/widget/LoginButton$2;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/Session;)V

    invoke-static {v0, v2}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v1

    .local v1, request:Lcom/facebook/Request;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/Request;

    const/4 v3, 0x0

    .line 777
    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    .line 778
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    .line 787
    .end local v0           #currentSession:Lcom/facebook/Session;
    .end local v1           #request:Lcom/facebook/Request;
    :cond_0
    :goto_0
    return-void

    .line 781
    .restart local v0       #currentSession:Lcom/facebook/Session;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    .line 782
    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    if-eqz v2, :cond_0

    .line 783
    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    iget-object v3, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    invoke-interface {v2, v3}, Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;->onUserInfoFetched(Lcom/facebook/model/GraphUser;)V

    goto :goto_0
.end method

.method private finishInit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 612
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginClickListener;

    invoke-direct {v0, p0, v4}, Lcom/facebook/widget/LoginButton$LoginClickListener;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/widget/LoginButton$LoginClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    .line 614
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    new-instance v0, Lcom/facebook/internal/SessionTracker;

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/facebook/widget/LoginButton$LoginButtonCallback;

    invoke-direct {v2, p0, v4}, Lcom/facebook/widget/LoginButton$LoginButtonCallback;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/widget/LoginButton$LoginButtonCallback;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;Z)V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    .line 616
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    .line 618
    :cond_0
    return-void
.end method

.method private initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 741
    if-nez p1, :cond_0

    move v2, v3

    .line 755
    :goto_0
    return v2

    .line 745
    :cond_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 746
    .local v1, session:Lcom/facebook/Session;
    if-eqz v1, :cond_1

    .line 747
    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    goto :goto_0

    .line 750
    :cond_1
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, applicationId:Ljava/lang/String;
    if-nez v0, :cond_2

    move v2, v3

    .line 752
    goto :goto_0

    .line 755
    :cond_2
    invoke-static {p1}, Lcom/facebook/Session;->openActiveSessionFromCache(Landroid/content/Context;)Lcom/facebook/Session;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private parseAttributes(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    .line 722
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/facebook/android/R$styleable;->com_facebook_login_view:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 723
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/LoginButton;->confirmLogout:Z

    .line 724
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/LoginButton;->fetchUserInfo:Z

    .line 725
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    .line 726
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LoginButton;->logoutText:Ljava/lang/String;

    .line 727
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 728
    return-void
.end method

.method private setButtonText()V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->logoutText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->logoutText:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    .line 738
    :goto_1
    return-void

    .line 733
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$string;->com_facebook_loginview_log_out_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 736
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$string;->com_facebook_loginview_log_in_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private showNuxPerSettings(Lcom/facebook/internal/Utility$FetchedAppSettings;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 653
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/internal/Utility$FetchedAppSettings;->getNuxEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 654
    invoke-virtual {p1}, Lcom/facebook/internal/Utility$FetchedAppSettings;->getNuxContent()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, nuxString:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/facebook/widget/LoginButton;->displayNux(Ljava/lang/String;)V

    .line 657
    .end local v0           #nuxString:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearPermissions()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->clearPermissions()V

    .line 424
    return-void
.end method

.method public dismissToolTip()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/ToolTipPopup;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/ToolTipPopup;

    invoke-virtual {v0}, Lcom/facebook/widget/ToolTipPopup;->dismiss()V

    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/ToolTipPopup;

    .line 553
    :cond_0
    return-void
.end method

.method public getDefaultAudience()Lcom/facebook/SessionDefaultAudience;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getDefaultAudience()Lcom/facebook/SessionDefaultAudience;

    move-result-object v0

    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/SessionLoginBehavior;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    move-result-object v0

    return-object v0
.end method

.method public getOnErrorListener()Lcom/facebook/widget/LoginButton$OnErrorListener;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getOnErrorListener()Lcom/facebook/widget/LoginButton$OnErrorListener;

    move-result-object v0

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 710
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getPermissions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionStatusCallback()Lcom/facebook/Session$StatusCallback;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getSessionStatusCallback()Lcom/facebook/Session$StatusCallback;

    move-result-object v0

    return-object v0
.end method

.method public getToolTipDisplayTime()J
    .locals 2

    .prologue
    .line 542
    iget-wide v0, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    return-wide v0
.end method

.method public getToolTipMode()Lcom/facebook/widget/LoginButton$ToolTipMode;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    return-object v0
.end method

.method public getUserInfoChangedCallback()Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    return-object v0
.end method

.method handleError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$5(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/widget/LoginButton$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 893
    instance-of v0, p1, Lcom/facebook/FacebookException;

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$5(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/widget/LoginButton$OnErrorListener;

    move-result-object v0

    check-cast p1, Lcom/facebook/FacebookException;

    .end local p1
    invoke-interface {v0, p1}, Lcom/facebook/widget/LoginButton$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 896
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$5(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/widget/LoginButton$OnErrorListener;

    move-result-object v0

    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/facebook/widget/LoginButton$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 579
    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 580
    .local v0, session:Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v1

    .line 584
    :goto_0
    return v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 634
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 635
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->isTracking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->startTracking()V

    .line 637
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    .line 638
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    .line 640
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 692
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 693
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->stopTracking()V

    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->dismissToolTip()V

    .line 697
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 644
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 646
    iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->nuxChecked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    sget-object v1, Lcom/facebook/widget/LoginButton$ToolTipMode;->NEVER_DISPLAY:Lcom/facebook/widget/LoginButton$ToolTipMode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/LoginButton;->nuxChecked:Z

    .line 648
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->checkNuxSettings()V

    .line 650
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .prologue
    .line 607
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 608
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->finishInit()V

    .line 609
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 701
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onVisibilityChanged(Landroid/view/View;I)V

    .line 703
    if-eqz p2, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->dismissToolTip()V

    .line 706
    :cond_0
    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0
    .parameter "applicationId"

    .prologue
    .line 458
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)V
    .locals 1
    .parameter "defaultAudience"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)V

    .line 302
    return-void
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 629
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;

    .line 630
    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)V
    .locals 1
    .parameter "loginBehavior"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)V

    .line 437
    return-void
.end method

.method setLoginLogoutEventName(Ljava/lang/String;)V
    .locals 0
    .parameter "eventName"

    .prologue
    .line 718
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 719
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 796
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->listenerCallback:Landroid/view/View$OnClickListener;

    .line 797
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/LoginButton$OnErrorListener;)V
    .locals 1
    .parameter "onErrorListener"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setOnErrorListener(Lcom/facebook/widget/LoginButton$OnErrorListener;)V

    .line 282
    return-void
.end method

.method setProperties(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)V
    .locals 0
    .parameter "properties"

    .prologue
    .line 714
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .line 715
    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setPublishPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    .line 390
    return-void
.end method

.method public varargs setPublishPermissions([Ljava/lang/String;)V
    .locals 3
    .parameter "permissions"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v2}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setPublishPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    .line 416
    return-void
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setReadPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    .line 338
    return-void
.end method

.method public varargs setReadPermissions([Ljava/lang/String;)V
    .locals 3
    .parameter "permissions"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v2}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setReadPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    .line 363
    return-void
.end method

.method public setSession(Lcom/facebook/Session;)V
    .locals 1
    .parameter "newSession"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0, p1}, Lcom/facebook/internal/SessionTracker;->setSession(Lcom/facebook/Session;)V

    .line 601
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    .line 602
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    .line 603
    return-void
.end method

.method public setSessionStatusCallback(Lcom/facebook/Session$StatusCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setSessionStatusCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 487
    return-void
.end method

.method public setToolTipDisplayTime(J)V
    .locals 0
    .parameter "displayTime"

    .prologue
    .line 534
    iput-wide p1, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    .line 535
    return-void
.end method

.method public setToolTipMode(Lcom/facebook/widget/LoginButton$ToolTipMode;)V
    .locals 0
    .parameter "nuxMode"

    .prologue
    .line 515
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    .line 516
    return-void
.end method

.method public setToolTipStyle(Lcom/facebook/widget/ToolTipPopup$Style;)V
    .locals 0
    .parameter "nuxStyle"

    .prologue
    .line 505
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    .line 506
    return-void
.end method

.method public setUserInfoChangedCallback(Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;)V
    .locals 0
    .parameter "userInfoChangedCallback"

    .prologue
    .line 475
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    .line 476
    return-void
.end method
