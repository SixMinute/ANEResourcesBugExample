.class Lcom/adobe/air/SSLSecurityDialog$3;
.super Ljava/lang/Object;
.source "SSLSecurityDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/SSLSecurityDialog;->ShowSSLDialog(Ljava/lang/String;[BLandroid/net/http/SslCertificate;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/SSLSecurityDialog;


# direct methods
.method constructor <init>(Lcom/adobe/air/SSLSecurityDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/adobe/air/SSLSecurityDialog$3;->this$0:Lcom/adobe/air/SSLSecurityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog$3;->this$0:Lcom/adobe/air/SSLSecurityDialog;

    const-string v1, "none"

    #calls: Lcom/adobe/air/SSLSecurityDialog;->SetUserAction(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/adobe/air/SSLSecurityDialog;->access$000(Lcom/adobe/air/SSLSecurityDialog;Ljava/lang/String;)V

    .line 143
    return-void
.end method
