.class Lcom/facebook/Request$Attachment;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Attachment"
.end annotation


# instance fields
.field private final request:Lcom/facebook/Request;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/Request;Ljava/lang/Object;)V
    .locals 0
    .parameter "request"
    .parameter "value"

    .prologue
    .line 1868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1869
    iput-object p1, p0, Lcom/facebook/Request$Attachment;->request:Lcom/facebook/Request;

    .line 1870
    iput-object p2, p0, Lcom/facebook/Request$Attachment;->value:Ljava/lang/Object;

    .line 1871
    return-void
.end method


# virtual methods
.method public getRequest()Lcom/facebook/Request;
    .locals 1

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/facebook/Request$Attachment;->request:Lcom/facebook/Request;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/facebook/Request$Attachment;->value:Ljava/lang/Object;

    return-object v0
.end method
