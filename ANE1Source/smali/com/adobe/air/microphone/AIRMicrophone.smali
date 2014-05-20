.class public Lcom/adobe/air/microphone/AIRMicrophone;
.super Ljava/lang/Object;
.source "AIRMicrophone.java"


# instance fields
.field private m_airRecorder:Lcom/adobe/air/microphone/AIRMicrophoneRecorder;

.field private m_audioFormat:I

.field private m_audioSource:I

.field private m_bufferSize:I

.field private m_channelConfiguration:I

.field private m_sampleRate:I

.field private m_thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_audioSource:I

    .line 65
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_sampleRate:I

    .line 66
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_channelConfiguration:I

    .line 67
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_audioFormat:I

    .line 68
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_bufferSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public Close()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_airRecorder:Lcom/adobe/air/microphone/AIRMicrophoneRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->setRecording(Z)V

    .line 54
    return-void
.end method

.method public GetNextBuffer()[B
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_airRecorder:Lcom/adobe/air/microphone/AIRMicrophoneRecorder;

    invoke-virtual {v0}, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->getBuffer()[B

    move-result-object v0

    .line 59
    return-object v0
.end method

.method public Open(IIII)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 14
    iput v6, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_audioSource:I

    .line 16
    iput p1, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_sampleRate:I

    .line 19
    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_audioFormat:I

    .line 29
    :goto_0
    if-ne p2, v6, :cond_2

    .line 30
    iput v2, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_channelConfiguration:I

    .line 38
    :goto_1
    iput p4, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_bufferSize:I

    .line 41
    new-instance v0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;

    iget v1, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_audioSource:I

    iget v2, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_sampleRate:I

    iget v3, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_channelConfiguration:I

    iget v4, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_audioFormat:I

    iget v5, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_bufferSize:I

    invoke-direct/range {v0 .. v5}, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;-><init>(IIIII)V

    iput-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_airRecorder:Lcom/adobe/air/microphone/AIRMicrophoneRecorder;

    .line 42
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_airRecorder:Lcom/adobe/air/microphone/AIRMicrophoneRecorder;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_thread:Ljava/lang/Thread;

    .line 43
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_airRecorder:Lcom/adobe/air/microphone/AIRMicrophoneRecorder;

    invoke-virtual {v0}, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->Open()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v6, :cond_4

    .line 45
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_airRecorder:Lcom/adobe/air/microphone/AIRMicrophoneRecorder;

    invoke-virtual {v0, v6}, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->setRecording(Z)V

    move v0, v6

    .line 48
    :goto_2
    return v0

    .line 21
    :cond_0
    if-ne p3, v2, :cond_1

    .line 22
    iput v1, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_audioFormat:I

    goto :goto_0

    :cond_1
    move v0, v7

    .line 25
    goto :goto_2

    .line 31
    :cond_2
    if-ne p2, v1, :cond_3

    .line 32
    const/16 v0, 0xc

    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_channelConfiguration:I

    goto :goto_1

    :cond_3
    move v0, v7

    .line 35
    goto :goto_2

    :cond_4
    move v0, v7

    .line 48
    goto :goto_2
.end method
