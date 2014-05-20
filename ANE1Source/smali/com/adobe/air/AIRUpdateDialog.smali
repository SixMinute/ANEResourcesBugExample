.class public Lcom/adobe/air/AIRUpdateDialog;
.super Landroid/app/Activity;
.source "AIRUpdateDialog.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final RUNTIME_PACKAGE_ID:Ljava/lang/String;

.field private actWrapper:Lcom/adobe/air/AndroidActivityWrapper;

.field private alertDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    const-string v0, "AIRUpdateDialog"

    iput-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->LOG_TAG:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 96
    const-string v0, "com.adobe.air"

    iput-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AIRUpdateDialog;)Lcom/adobe/air/AndroidActivityWrapper;
    .locals 1
    .parameter

    .prologue
    .line 10
    iget-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->actWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->CreateAndroidActivityWrapper(Landroid/app/Activity;Ljava/lang/Boolean;)Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->actWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    .line 23
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Adobe\u00ae AIR\u00ae"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_RUNTIME_UPDATE_MESSAGE:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v1}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 24
    iget-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    sget-object v2, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_UPDATE:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v2}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/adobe/air/AIRUpdateDialog$1;

    invoke-direct {v3, p0}, Lcom/adobe/air/AIRUpdateDialog$1;-><init>(Lcom/adobe/air/AIRUpdateDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    sget-object v2, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_CANCEL:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v2}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/adobe/air/AIRUpdateDialog$2;

    invoke-direct {v3, p0}, Lcom/adobe/air/AIRUpdateDialog$2;-><init>(Lcom/adobe/air/AIRUpdateDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/adobe/air/AIRUpdateDialog$3;

    invoke-direct {v1, p0}, Lcom/adobe/air/AIRUpdateDialog$3;-><init>(Lcom/adobe/air/AIRUpdateDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 57
    iget-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 58
    iget-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 60
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 72
    invoke-virtual {p0}, Lcom/adobe/air/AIRUpdateDialog;->finish()V

    .line 75
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 76
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 88
    invoke-virtual {p0}, Lcom/adobe/air/AIRUpdateDialog;->finish()V

    .line 91
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 92
    return-void
.end method
