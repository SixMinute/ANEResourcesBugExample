.class public Lcom/adobe/air/FlashEGL;
.super Ljava/lang/Object;
.source "FlashEGL.java"


# static fields
.field private static EGL_BUFFER_DESTROYED:I

.field private static EGL_BUFFER_PRESERVED:I

.field private static EGL_CONTEXT_CLIENT_VERSION:I

.field private static EGL_COVERAGE_BUFFERS_NV:I

.field private static EGL_COVERAGE_SAMPLES_NV:I

.field private static EGL_OPENGL_ES2_BIT:I

.field private static EGL_SWAP_BEHAVIOR:I

.field private static TAG:Ljava/lang/String;

.field private static cfgAttrs:[I

.field private static fbPBufferSurfaceAttrs:[I

.field private static fbWindowSurfaceOffAttrs:[I

.field private static fbWindowSurfaceOnAttrs:[I


# instance fields
.field private kAlphaBits:I

.field private kBlueBits:I

.field private kColorBits:I

.field private kConfigId:I

.field private kCsaaSamp:I

.field private kDepthBits:I

.field private kGreenBits:I

.field private kMsaaSamp:I

.field private kNumElements:I

.field private kRedBits:I

.field private kStencilBits:I

.field private kSurfaceTypes:I

.field private kSwapPreserve:I

.field private kSwapPreserveDefault:I

.field private kSwapPreserveOff:I

.field private kSwapPreserveOn:I

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglConfigCount:I

.field private mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

.field volatile mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mEglVersion:[I

.field private mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mIsARGBSurface:Z

.field private mIsBufferPreserve:Z

.field private mIsGPUOOM:Z

.field private mPbufferConfigCount:I

.field private mPixmapConfigCount:I

.field private mWindowConfigCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 41
    const-string v0, "FlashEGL"

    sput-object v0, Lcom/adobe/air/FlashEGL;->TAG:Ljava/lang/String;

    .line 42
    const/16 v0, 0x3098

    sput v0, Lcom/adobe/air/FlashEGL;->EGL_CONTEXT_CLIENT_VERSION:I

    .line 43
    const/4 v0, 0x4

    sput v0, Lcom/adobe/air/FlashEGL;->EGL_OPENGL_ES2_BIT:I

    .line 45
    const/16 v0, 0x30e0

    sput v0, Lcom/adobe/air/FlashEGL;->EGL_COVERAGE_BUFFERS_NV:I

    .line 46
    const/16 v0, 0x30e1

    sput v0, Lcom/adobe/air/FlashEGL;->EGL_COVERAGE_SAMPLES_NV:I

    .line 49
    const/16 v0, 0x3093

    sput v0, Lcom/adobe/air/FlashEGL;->EGL_SWAP_BEHAVIOR:I

    .line 50
    const/16 v0, 0x3094

    sput v0, Lcom/adobe/air/FlashEGL;->EGL_BUFFER_PRESERVED:I

    .line 51
    const/16 v0, 0x3095

    sput v0, Lcom/adobe/air/FlashEGL;->EGL_BUFFER_DESTROYED:I

    .line 61
    const/16 v0, 0x9

    new-array v0, v0, [I

    const/16 v1, 0x3033

    aput v1, v0, v4

    aput v3, v0, v5

    const/16 v1, 0x3025

    aput v1, v0, v6

    aput v3, v0, v7

    const/4 v1, 0x4

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3040

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/adobe/air/FlashEGL;->EGL_OPENGL_ES2_BIT:I

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3038

    aput v2, v0, v1

    sput-object v0, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    .line 71
    new-array v0, v7, [I

    sget v1, Lcom/adobe/air/FlashEGL;->EGL_SWAP_BEHAVIOR:I

    aput v1, v0, v4

    sget v1, Lcom/adobe/air/FlashEGL;->EGL_BUFFER_PRESERVED:I

    aput v1, v0, v5

    const/16 v1, 0x3038

    aput v1, v0, v6

    sput-object v0, Lcom/adobe/air/FlashEGL;->fbWindowSurfaceOnAttrs:[I

    .line 77
    new-array v0, v7, [I

    sget v1, Lcom/adobe/air/FlashEGL;->EGL_SWAP_BEHAVIOR:I

    aput v1, v0, v4

    sget v1, Lcom/adobe/air/FlashEGL;->EGL_BUFFER_DESTROYED:I

    aput v1, v0, v5

    const/16 v1, 0x3038

    aput v1, v0, v6

    sput-object v0, Lcom/adobe/air/FlashEGL;->fbWindowSurfaceOffAttrs:[I

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adobe/air/FlashEGL;->fbPBufferSurfaceAttrs:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x57t 0x30t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x56t 0x30t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v1, p0, Lcom/adobe/air/FlashEGL;->kSurfaceTypes:I

    iput v3, p0, Lcom/adobe/air/FlashEGL;->kConfigId:I

    iput v4, p0, Lcom/adobe/air/FlashEGL;->kRedBits:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kGreenBits:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kBlueBits:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kAlphaBits:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kColorBits:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kDepthBits:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kStencilBits:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kMsaaSamp:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kCsaaSamp:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kSwapPreserve:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kNumElements:I

    .line 58
    iput v1, p0, Lcom/adobe/air/FlashEGL;->kSwapPreserveDefault:I

    iput v3, p0, Lcom/adobe/air/FlashEGL;->kSwapPreserveOn:I

    iput v4, p0, Lcom/adobe/air/FlashEGL;->kSwapPreserveOff:I

    .line 769
    iput-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 770
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 771
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 772
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 773
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 774
    iput-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 775
    iput-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    .line 776
    iput-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglVersion:[I

    .line 777
    iput v1, p0, Lcom/adobe/air/FlashEGL;->mEglConfigCount:I

    .line 778
    iput v1, p0, Lcom/adobe/air/FlashEGL;->mWindowConfigCount:I

    .line 779
    iput v1, p0, Lcom/adobe/air/FlashEGL;->mPixmapConfigCount:I

    .line 780
    iput v1, p0, Lcom/adobe/air/FlashEGL;->mPbufferConfigCount:I

    .line 781
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 782
    iput-boolean v1, p0, Lcom/adobe/air/FlashEGL;->mIsARGBSurface:Z

    .line 783
    iput-boolean v1, p0, Lcom/adobe/air/FlashEGL;->mIsGPUOOM:Z

    .line 784
    iput-boolean v1, p0, Lcom/adobe/air/FlashEGL;->mIsBufferPreserve:Z

    return-void
.end method

.method private XX(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    iget v0, p0, Lcom/adobe/air/FlashEGL;->kNumElements:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method private checkEglError(Ljava/lang/String;)I
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x3000

    .line 729
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 730
    if-eq v0, v6, :cond_3

    .line 732
    iget-boolean v1, p0, Lcom/adobe/air/FlashEGL;->mIsGPUOOM:Z

    if-nez v1, :cond_3

    const/16 v1, 0x3003

    if-ne v0, v1, :cond_3

    .line 737
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_1

    .line 739
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 740
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 741
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 742
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 743
    if-eq v1, v6, :cond_0

    .line 746
    :cond_0
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 747
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 748
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 749
    if-eq v1, v6, :cond_1

    .line 754
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v1, v2, :cond_2

    .line 756
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 757
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 758
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 759
    if-eq v1, v6, :cond_2

    .line 763
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/air/FlashEGL;->mIsGPUOOM:Z

    .line 766
    :cond_3
    return v0
.end method


# virtual methods
.method public ChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/adobe/air/FlashEGL;->IsEmulator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    .line 190
    :goto_0
    return v0

    .line 146
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 147
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 148
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 151
    new-array v2, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 152
    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3, p1, v2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 154
    const/4 v0, 0x0

    .line 155
    array-length v3, p2

    .line 156
    array-length v4, p2

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 157
    array-length v3, p2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 159
    :cond_1
    const/4 v4, 0x0

    move v10, v4

    move v4, v0

    move v0, v10

    :goto_1
    if-ge v0, v1, :cond_6

    .line 161
    const/4 v5, 0x0

    .line 162
    :goto_2
    if-ge v5, v3, :cond_3

    .line 164
    add-int/lit8 v6, v5, 0x1

    aget v6, p2, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 166
    const/4 v6, 0x1

    new-array v6, v6, [I

    .line 167
    iget-object v7, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    aget-object v8, v2, v0

    aget v9, p2, v5

    invoke-interface {v7, p1, v8, v9, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 170
    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/lit8 v7, v5, 0x1

    aget v7, p2, v7

    and-int/2addr v6, v7

    add-int/lit8 v7, v5, 0x1

    aget v7, p2, v7

    if-ne v6, v7, :cond_3

    .line 162
    :cond_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    .line 178
    :cond_3
    if-ne v5, v3, :cond_5

    .line 180
    if-eqz p3, :cond_4

    if-ge v4, p4, :cond_4

    .line 182
    aget-object v5, v2, v0

    aput-object v5, p3, v4

    .line 184
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 159
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    :cond_6
    const/4 v0, 0x0

    aput v4, p5, v0

    .line 190
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public CreateDummySurfaceAndContext()I
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0x3006

    const/16 v7, 0x3000

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 324
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 327
    const/16 v0, 0x3008

    .line 389
    :goto_0
    return v0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_3

    .line 333
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 335
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move v0, v7

    .line 337
    goto :goto_0

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_2

    .line 341
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move v0, v7

    .line 343
    goto :goto_0

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 346
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 347
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 351
    :cond_3
    new-array v5, v4, [I

    .line 352
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 353
    sget-object v0, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    aput v4, v0, v4

    .line 354
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/air/FlashEGL;->ChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 355
    sget-object v0, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    const/4 v1, -0x1

    aput v1, v0, v4

    .line 357
    aget v0, v5, v6

    .line 358
    if-nez v0, :cond_4

    move v0, v8

    .line 360
    goto :goto_0

    .line 363
    :cond_4
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcom/adobe/air/FlashEGL;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v1, v0, v6

    aput v9, v0, v4

    const/16 v1, 0x3038

    aput v1, v0, v9

    .line 365
    const-string v1, "Before eglCreateContext"

    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 366
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v4, v3, v6

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v4, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 367
    const-string v0, "After eglCreateContext"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_5

    move v0, v8

    .line 371
    goto/16 :goto_0

    .line 374
    :cond_5
    const-string v0, "Before eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v2, v3, v6

    sget-object v3, Lcom/adobe/air/FlashEGL;->fbPBufferSurfaceAttrs:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 376
    const-string v0, "After eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_6

    move v0, v8

    .line 381
    goto/16 :goto_0

    .line 384
    :cond_6
    const-string v0, "Before eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 386
    const-string v0, "After eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move v0, v7

    .line 389
    goto/16 :goto_0
.end method

.method public CreateGLContext(Z)I
    .locals 7
    .parameter

    .prologue
    const/16 v5, 0x3000

    const/4 v3, 0x2

    const-string v4, "Before eglCreateContext"

    const-string v6, "After eglCreateContext"

    .line 452
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_0

    .line 455
    const/16 v0, 0x3005

    .line 497
    :goto_0
    return v0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_1

    if-nez p1, :cond_1

    move v0, v5

    .line 462
    goto :goto_0

    .line 468
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/adobe/air/FlashEGL;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/16 v1, 0x3038

    aput v1, v0, v3

    .line 470
    if-eqz p1, :cond_2

    .line 472
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 473
    const-string v2, "Before eglCreateContext"

    invoke-direct {p0, v4}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 474
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 475
    const-string v0, "After eglCreateContext"

    invoke-direct {p0, v6}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 477
    const-string v0, "After eglDestroyContext"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 486
    :goto_1
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_3

    .line 487
    const/16 v0, 0x3006

    goto :goto_0

    .line 481
    :cond_2
    const-string v1, "Before eglCreateContext"

    invoke-direct {p0, v4}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 482
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 483
    const-string v0, "After eglCreateContext"

    invoke-direct {p0, v6}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    goto :goto_1

    .line 490
    :cond_3
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_4

    .line 492
    const-string v0, "Before eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v3, Lcom/adobe/air/FlashEGL;->fbPBufferSurfaceAttrs:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 494
    const-string v0, "After eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    :cond_4
    move v0, v5

    .line 497
    goto/16 :goto_0
.end method

.method public CreateWindowSurface(Landroid/view/SurfaceView;I)I
    .locals 12
    .parameter
    .parameter

    .prologue
    const/16 v11, 0x300d

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "Before eglCreateWindowSurface"

    const-string v10, "After eglCreateWindowSurface"

    .line 597
    iget-boolean v1, p0, Lcom/adobe/air/FlashEGL;->mIsGPUOOM:Z

    if-eqz v1, :cond_0

    .line 598
    const/16 v1, 0x3003

    .line 681
    :goto_0
    return v1

    .line 600
    :cond_0
    instance-of v1, p1, Lcom/adobe/air/AIRWindowSurfaceView;

    .line 602
    instance-of v2, p1, Lcom/adobe/flashruntime/air/VideoViewAIR;

    if-nez v2, :cond_1

    instance-of v2, p1, Lcom/adobe/air/AIRStage3DSurfaceView;

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    move v1, v11

    .line 607
    goto :goto_0

    .line 610
    :cond_1
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v2, v3, :cond_2

    .line 613
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 614
    invoke-virtual {p0}, Lcom/adobe/air/FlashEGL;->MakeGLCurrent()I

    move-result v1

    goto :goto_0

    .line 619
    :cond_2
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kSwapPreserveOn:I

    if-ne p2, v2, :cond_3

    .line 621
    const-string v2, "Before eglCreateWindowSurface"

    invoke-direct {p0, v7}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 622
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    sget-object v6, Lcom/adobe/air/FlashEGL;->fbWindowSurfaceOnAttrs:[I

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 623
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_9

    .line 624
    const-string v2, "After eglCreateWindowSurface"

    invoke-direct {p0, v10}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move v2, v8

    .line 636
    :goto_1
    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v3, v4, :cond_4

    .line 639
    const-string v3, "Before eglCreateWindowSurface"

    invoke-direct {p0, v7}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 640
    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 641
    const-string v3, "After eglCreateWindowSurface"

    invoke-direct {p0, v10}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move-result v3

    .line 642
    const/16 v4, 0x3000

    if-eq v3, v4, :cond_4

    move v1, v3

    .line 643
    goto :goto_0

    .line 627
    :cond_3
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kSwapPreserveOff:I

    if-ne p2, v2, :cond_9

    .line 629
    const-string v2, "Before eglCreateWindowSurface"

    invoke-direct {p0, v7}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 630
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    sget-object v6, Lcom/adobe/air/FlashEGL;->fbWindowSurfaceOffAttrs:[I

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 631
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_9

    .line 632
    const-string v2, "After eglCreateWindowSurface"

    invoke-direct {p0, v10}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move v2, v8

    .line 633
    goto :goto_1

    .line 646
    :cond_4
    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v3, v4, :cond_5

    move v1, v11

    .line 648
    goto/16 :goto_0

    .line 654
    :cond_5
    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 656
    if-eqz v1, :cond_6

    .line 658
    move-object v0, p1

    check-cast v0, Lcom/adobe/air/AIRWindowSurfaceView;

    move-object v1, v0

    invoke-virtual {v1, p0}, Lcom/adobe/air/AIRWindowSurfaceView;->setFlashEGL(Lcom/adobe/air/FlashEGL;)V

    .line 662
    check-cast p1, Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 663
    if-eqz v1, :cond_6

    .line 666
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 667
    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 671
    :cond_6
    new-array v1, v9, [I

    .line 672
    aput v8, v1, v8

    .line 673
    iput-boolean v8, p0, Lcom/adobe/air/FlashEGL;->mIsBufferPreserve:Z

    .line 674
    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget v5, Lcom/adobe/air/FlashEGL;->EGL_SWAP_BEHAVIOR:I

    invoke-interface {v2, v3, v4, v5, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 675
    aget v1, v1, v8

    sget v2, Lcom/adobe/air/FlashEGL;->EGL_BUFFER_PRESERVED:I

    if-ne v1, v2, :cond_8

    move v1, v9

    :goto_2
    iput-boolean v1, p0, Lcom/adobe/air/FlashEGL;->mIsBufferPreserve:Z

    .line 681
    :cond_7
    invoke-virtual {p0}, Lcom/adobe/air/FlashEGL;->MakeGLCurrent()I

    move-result v1

    goto/16 :goto_0

    :cond_8
    move v1, v8

    .line 675
    goto :goto_2

    :cond_9
    move v2, v9

    goto/16 :goto_1
.end method

.method public DestroyGLContext()Z
    .locals 5

    .prologue
    .line 428
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_1

    .line 430
    :cond_0
    const/4 v0, 0x0

    .line 446
    :goto_0
    return v0

    .line 433
    :cond_1
    const-string v0, "DestroyGLContext: Before eglMakeCurrent for noSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 435
    const-string v0, "DestroyGLContext: After eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_2

    .line 438
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 439
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 442
    :cond_2
    const-string v0, "Before eglDestroyContext"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    .line 444
    const-string v1, "After eglDestroyContext"

    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 445
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0
.end method

.method public DestroyWindowSurface()Z
    .locals 8

    .prologue
    const/16 v6, 0x3000

    const/4 v5, 0x0

    const-string v7, "After eglMakeCurrent"

    .line 686
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_4

    .line 689
    const-string v0, "Before eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 690
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 692
    const-string v0, "After eglMakeCurrent"

    invoke-direct {p0, v7}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move-result v0

    if-eq v6, v0, :cond_0

    move v0, v5

    .line 714
    :goto_0
    return v0

    .line 695
    :cond_0
    const-string v0, "Before eglDestroySurface (window)"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 696
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 697
    const-string v0, "After eglDestroySurface (window)"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move-result v0

    if-eq v6, v0, :cond_1

    move v0, v5

    .line 698
    goto :goto_0

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_2

    .line 701
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 702
    :cond_2
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 704
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_3

    .line 706
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 707
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 708
    const-string v0, "After eglMakeCurrent"

    invoke-direct {p0, v7}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move-result v0

    if-eq v6, v0, :cond_3

    move v0, v5

    .line 709
    goto :goto_0

    .line 712
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v5

    .line 714
    goto :goto_0
.end method

.method public FlashEGL()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 94
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 95
    iput-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 96
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 97
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 98
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 99
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/FlashEGL;->mIsARGBSurface:Z

    .line 101
    return-void
.end method

.method public GetConfigs(ZZ)[I
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 229
    iget v0, p0, Lcom/adobe/air/FlashEGL;->mEglConfigCount:I

    iget v1, p0, Lcom/adobe/air/FlashEGL;->kNumElements:I

    mul-int/2addr v0, v1

    new-array v6, v0, [I

    .line 230
    new-array v5, v9, [I

    .line 231
    new-array v7, v9, [I

    .line 234
    iget v0, p0, Lcom/adobe/air/FlashEGL;->mEglConfigCount:I

    new-array v0, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    .line 236
    const-string v0, "Before eglChooseConfig"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 237
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    iget v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigCount:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/air/FlashEGL;->ChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 238
    const-string v0, "After eglChooseConfig"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 240
    aget v0, v5, v8

    iput v0, p0, Lcom/adobe/air/FlashEGL;->mEglConfigCount:I

    move v1, v8

    .line 241
    :goto_0
    if-ge v1, v0, :cond_5

    .line 243
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    const/16 v5, 0x3033

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 244
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kSurfaceTypes:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    .line 246
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kConfigId:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aput v1, v6, v2

    .line 248
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    const/16 v5, 0x3024

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 249
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kRedBits:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    .line 251
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    const/16 v5, 0x3023

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 252
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kGreenBits:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    .line 254
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    const/16 v5, 0x3022

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 255
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kBlueBits:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    .line 257
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    const/16 v5, 0x3021

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 258
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kAlphaBits:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    .line 260
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    const/16 v5, 0x3020

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 261
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kColorBits:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    .line 263
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    const/16 v5, 0x3025

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 264
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kDepthBits:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    .line 266
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    const/16 v5, 0x3026

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 267
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kStencilBits:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    .line 269
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kCsaaSamp:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aput v8, v6, v2

    .line 270
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kMsaaSamp:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aput v8, v6, v2

    .line 272
    if-eqz p1, :cond_2

    .line 273
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    sget v5, Lcom/adobe/air/FlashEGL;->EGL_COVERAGE_SAMPLES_NV:I

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 274
    aget v2, v7, v8

    if-eq v2, v9, :cond_0

    .line 275
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kCsaaSamp:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    .line 283
    :cond_0
    :goto_1
    if-eqz p2, :cond_4

    .line 285
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kSwapPreserve:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglVersion:[I

    aget v3, v3, v8

    if-gt v3, v9, :cond_1

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglVersion:[I

    aget v3, v3, v9

    const/4 v4, 0x3

    if-le v3, v4, :cond_3

    :cond_1
    iget v3, p0, Lcom/adobe/air/FlashEGL;->kSurfaceTypes:I

    invoke-direct {p0, v1, v3}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v3

    aget v3, v6, v3

    sget v4, Lcom/adobe/air/FlashEGL;->EGL_BUFFER_PRESERVED:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    move v3, v9

    :goto_2
    aput v3, v6, v2

    .line 241
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 278
    :cond_2
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    const/16 v5, 0x3031

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 279
    aget v2, v7, v8

    if-eq v2, v9, :cond_0

    .line 280
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kMsaaSamp:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    goto :goto_1

    :cond_3
    move v3, v8

    .line 285
    goto :goto_2

    .line 288
    :cond_4
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kSwapPreserve:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aput v8, v6, v2

    goto :goto_3

    .line 291
    :cond_5
    return-object v6
.end method

.method public GetNumConfigs()[I
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 195
    new-array v6, v9, [I

    .line 196
    new-array v5, v7, [I

    .line 199
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/air/FlashEGL;->ChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 200
    aget v0, v5, v4

    aput v0, v6, v4

    iput v0, p0, Lcom/adobe/air/FlashEGL;->mEglConfigCount:I

    .line 204
    sget-object v0, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    aput v9, v0, v7

    .line 205
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/air/FlashEGL;->ChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 206
    aget v0, v5, v4

    aput v0, v6, v7

    iput v0, p0, Lcom/adobe/air/FlashEGL;->mWindowConfigCount:I

    .line 210
    sget-object v0, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    aput v8, v0, v7

    .line 211
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/air/FlashEGL;->ChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 212
    aget v0, v5, v4

    aput v0, v6, v8

    iput v0, p0, Lcom/adobe/air/FlashEGL;->mPixmapConfigCount:I

    .line 216
    sget-object v0, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    aput v7, v0, v7

    .line 217
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/air/FlashEGL;->ChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 218
    const/4 v0, 0x3

    aget v1, v5, v4

    aput v1, v6, v0

    iput v1, p0, Lcom/adobe/air/FlashEGL;->mPbufferConfigCount:I

    .line 222
    sget-object v0, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    const/4 v1, -0x1

    aput v1, v0, v7

    .line 224
    return-object v6
.end method

.method public GetSurfaceHeight()I
    .locals 5

    .prologue
    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 127
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v4, 0x3056

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    .line 129
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public GetSurfaceWidth()I
    .locals 5

    .prologue
    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 119
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v4, 0x3057

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    .line 121
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public HasGLContext()Z
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public InitEGL()I
    .locals 4

    .prologue
    const/16 v3, 0x3000

    .line 395
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_1

    move v0, v3

    .line 423
    :cond_0
    :goto_0
    return v0

    .line 402
    :cond_1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 406
    const-string v0, "Before eglGetDisplay"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 408
    const-string v0, "After eglGetDisplay"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move-result v0

    .line 409
    if-ne v3, v0, :cond_0

    .line 414
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglVersion:[I

    .line 415
    const-string v0, "Before eglInitialize"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglVersion:[I

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 417
    const-string v0, "After eglInitialize"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move-result v0

    .line 418
    if-ne v3, v0, :cond_0

    move v0, v3

    .line 423
    goto :goto_0
.end method

.method public IsARGBSurface()Z
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/adobe/air/FlashEGL;->mIsARGBSurface:Z

    return v0
.end method

.method public IsBufferPreserve()Z
    .locals 1

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/adobe/air/FlashEGL;->mIsBufferPreserve:Z

    return v0
.end method

.method public IsEmulator()Z
    .locals 3

    .prologue
    const-string v2, "generic"

    .line 134
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public MakeGLCurrent()I
    .locals 5

    .prologue
    .line 570
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_0

    .line 573
    const/16 v0, 0x3006

    .line 590
    :goto_0
    return v0

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_1

    .line 579
    const/16 v0, 0x300d

    goto :goto_0

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_2

    .line 585
    const/16 v0, 0x3008

    goto :goto_0

    .line 588
    :cond_2
    const-string v0, "Before eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 590
    const-string v0, "After eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public ReleaseGPUResources()V
    .locals 5

    .prologue
    .line 515
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_0

    .line 553
    :goto_0
    return-void

    .line 521
    :cond_0
    const-string v0, "Before eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 523
    const-string v0, "After eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    monitor-enter v0

    .line 528
    :try_start_0
    const-string v1, "Before eglDestroySurface"

    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 529
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_1

    .line 530
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 531
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 533
    :cond_1
    const-string v1, "After eglDestroySurface (window)"

    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 534
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_2

    .line 538
    const-string v0, "Before eglDestroySurface (pbuffer)"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 540
    const-string v0, "After eglDestroySurface (pbuffer)"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 541
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 545
    :cond_2
    const-string v0, "Before eglDestroyContext"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 547
    const-string v0, "After eglDestroyContext"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 549
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 550
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    .line 534
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public SetConfig(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 297
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 299
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 300
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3024

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 301
    aget v1, v0, v5

    .line 302
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3023

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 303
    aget v1, v0, v5

    .line 304
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3022

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 305
    aget v1, v0, v5

    .line 306
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3021

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 307
    aget v1, v0, v5

    .line 308
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3025

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 309
    aget v1, v0, v5

    .line 310
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3026

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 311
    aget v1, v0, v5

    .line 312
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3031

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 313
    aget v1, v0, v5

    .line 314
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3032

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 315
    aget v0, v0, v5

    .line 318
    return-void
.end method

.method public SwapEGLBuffers()V
    .locals 3

    .prologue
    .line 559
    const/16 v0, 0x3000

    invoke-virtual {p0}, Lcom/adobe/air/FlashEGL;->MakeGLCurrent()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 566
    :goto_0
    return-void

    .line 563
    :cond_0
    const-string v0, "Before eglSwapBuffers"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 565
    const-string v0, "After eglSwapBuffers"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TerminateEGL()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 505
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 507
    :cond_0
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 508
    return-void
.end method
