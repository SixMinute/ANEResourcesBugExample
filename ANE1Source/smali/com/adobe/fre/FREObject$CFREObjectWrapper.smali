.class public Lcom/adobe/fre/FREObject$CFREObjectWrapper;
.super Ljava/lang/Object;
.source "FREObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CFREObjectWrapper"
.end annotation


# instance fields
.field private m_objectPointer:J


# direct methods
.method private constructor <init>(J)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/adobe/fre/FREObject$CFREObjectWrapper;->m_objectPointer:J

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/fre/FREObject$CFREObjectWrapper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/adobe/fre/FREObject$CFREObjectWrapper;->m_objectPointer:J

    return-wide v0
.end method
