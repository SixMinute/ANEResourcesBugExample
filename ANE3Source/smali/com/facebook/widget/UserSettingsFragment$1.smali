.class Lcom/facebook/widget/UserSettingsFragment$1;
.super Ljava/lang/Object;
.source "UserSettingsFragment.java"

# interfaces
.implements Lcom/facebook/Request$GraphUserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/UserSettingsFragment;->fetchUserInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/UserSettingsFragment;

.field private final synthetic val$currentSession:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/facebook/widget/UserSettingsFragment;Lcom/facebook/Session;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/widget/UserSettingsFragment$1;->this$0:Lcom/facebook/widget/UserSettingsFragment;

    iput-object p2, p0, Lcom/facebook/widget/UserSettingsFragment$1;->val$currentSession:Lcom/facebook/Session;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V
    .locals 2
    .parameter "me"
    .parameter "response"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment$1;->val$currentSession:Lcom/facebook/Session;

    iget-object v1, p0, Lcom/facebook/widget/UserSettingsFragment$1;->this$0:Lcom/facebook/widget/UserSettingsFragment;

    invoke-virtual {v1}, Lcom/facebook/widget/UserSettingsFragment;->getSession()Lcom/facebook/Session;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment$1;->this$0:Lcom/facebook/widget/UserSettingsFragment;

    #setter for: Lcom/facebook/widget/UserSettingsFragment;->user:Lcom/facebook/model/GraphUser;
    invoke-static {v0, p1}, Lcom/facebook/widget/UserSettingsFragment;->access$3(Lcom/facebook/widget/UserSettingsFragment;Lcom/facebook/model/GraphUser;)V

    .line 351
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment$1;->this$0:Lcom/facebook/widget/UserSettingsFragment;

    #calls: Lcom/facebook/widget/UserSettingsFragment;->updateUI()V
    invoke-static {v0}, Lcom/facebook/widget/UserSettingsFragment;->access$4(Lcom/facebook/widget/UserSettingsFragment;)V

    .line 353
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment$1;->this$0:Lcom/facebook/widget/UserSettingsFragment;

    #getter for: Lcom/facebook/widget/UserSettingsFragment;->loginButton:Lcom/facebook/widget/LoginButton;
    invoke-static {v0}, Lcom/facebook/widget/UserSettingsFragment;->access$5(Lcom/facebook/widget/UserSettingsFragment;)Lcom/facebook/widget/LoginButton;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/LoginButton;->handleError(Ljava/lang/Exception;)V

    .line 356
    :cond_1
    return-void
.end method
