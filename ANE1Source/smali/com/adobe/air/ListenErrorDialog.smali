.class public final Lcom/adobe/air/ListenErrorDialog;
.super Ljava/lang/Object;
.source "ListenErrorDialog.java"


# instance fields
.field private final ICON_ERROR:I

.field private final PADDING_LENGTH:I

.field private final mActivity:Landroid/app/Activity;

.field private final mDebuggerPort:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x14

    iput v0, p0, Lcom/adobe/air/ListenErrorDialog;->PADDING_LENGTH:I

    .line 37
    const v0, 0x7f020001

    iput v0, p0, Lcom/adobe/air/ListenErrorDialog;->ICON_ERROR:I

    .line 42
    iput-object p1, p0, Lcom/adobe/air/ListenErrorDialog;->mActivity:Landroid/app/Activity;

    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/ListenErrorDialog;->mDebuggerPort:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private exitGracefully()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 104
    return-void
.end method


# virtual methods
.method public createAndShowDialog()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/16 v5, 0x14

    .line 48
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adobe/air/ListenErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/adobe/air/ListenErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53
    sget-object v2, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_DEBUGGER_LISTEN_ERROR_MESSAGE:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v2}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%1"

    iget-object v4, p0, Lcom/adobe/air/ListenErrorDialog;->mDebuggerPort:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/adobe/air/ListenErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 65
    sget-object v0, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_DEBUGGER_LISTEN_ERROR_TITLE:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v0}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 67
    sget-object v0, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_CANCEL:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v0}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/adobe/air/ListenErrorDialog$1;

    invoke-direct {v2, p0}, Lcom/adobe/air/ListenErrorDialog$1;-><init>(Lcom/adobe/air/ListenErrorDialog;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    sget-object v0, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_CONTINUE:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v0}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/adobe/air/ListenErrorDialog$2;

    invoke-direct {v2, p0}, Lcom/adobe/air/ListenErrorDialog$2;-><init>(Lcom/adobe/air/ListenErrorDialog;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    new-instance v0, Lcom/adobe/air/ListenErrorDialog$3;

    invoke-direct {v0, p0}, Lcom/adobe/air/ListenErrorDialog$3;-><init>(Lcom/adobe/air/ListenErrorDialog;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 89
    return-void
.end method

.method public gotResultFromDialog(Z)V
    .locals 3
    .parameter

    .prologue
    .line 93
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 95
    if-eqz p1, :cond_0

    .line 96
    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AndroidActivityWrapper;->gotResultFromDialog(ZLjava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/ListenErrorDialog;->exitGracefully()V

    goto :goto_0
.end method
