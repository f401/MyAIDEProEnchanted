.class public final Lcom/s1243808733/android/dx/io/CodeReader;
.super Ljava/lang/Object;
.source "CodeReader.java"


# instance fields
.field private callSiteVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

.field private fallbackVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

.field private fieldVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

.field private methodAndProtoVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

.field private methodVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

.field private stringVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

.field private typeVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->fallbackVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    .line 27
    iput-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->stringVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    .line 28
    iput-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->typeVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    .line 29
    iput-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->fieldVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    .line 30
    iput-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->methodVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    .line 31
    iput-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->methodAndProtoVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    .line 32
    iput-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->callSiteVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    return-void
.end method

.method private callVisit([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V
    .registers 5

    .line 116
    sget-object v0, Lcom/s1243808733/android/dx/io/CodeReader$1;->$SwitchMap$com$s1243808733$android$dx$io$IndexType:[I

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/io/OpcodeInfo;->getIndexType(I)Lcom/s1243808733/android/dx/io/IndexType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/io/IndexType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    const/4 v0, 0x0

    goto :goto_26

    .line 122
    :pswitch_15  #0x6
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->callSiteVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    goto :goto_26

    .line 121
    :pswitch_18  #0x5
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->methodAndProtoVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    goto :goto_26

    .line 120
    :pswitch_1b  #0x4
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->methodVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    goto :goto_26

    .line 119
    :pswitch_1e  #0x3
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->fieldVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    goto :goto_26

    .line 118
    :pswitch_21  #0x2
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->typeVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    goto :goto_26

    .line 117
    :pswitch_24  #0x1
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->stringVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    :goto_26
    if-nez v0, :cond_2a

    .line 126
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->fallbackVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    :cond_2a
    if-eqz v0, :cond_2f

    .line 130
    invoke-interface {v0, p1, p2}, Lcom/s1243808733/android/dx/io/CodeReader$Visitor;->visit([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V

    :cond_2f
    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_24  #00000001
        :pswitch_21  #00000002
        :pswitch_1e  #00000003
        :pswitch_1b  #00000004
        :pswitch_18  #00000005
        :pswitch_15  #00000006
    .end packed-switch
.end method


# virtual methods
.method public setAllVisitors(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->fallbackVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    .line 39
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->stringVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    .line 40
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->typeVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    .line 41
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->fieldVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    .line 42
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->methodVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    .line 43
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->methodAndProtoVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    .line 44
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->callSiteVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    return-void
.end method

.method public setCallSiteVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->callSiteVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    return-void
.end method

.method public setFallbackVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->fallbackVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    return-void
.end method

.method public setFieldVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->fieldVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    return-void
.end method

.method public setMethodAndProtoVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->methodAndProtoVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    return-void
.end method

.method public setMethodVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->methodVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    return-void
.end method

.method public setStringVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->stringVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    return-void
.end method

.method public setTypeVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->typeVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    return-void
.end method

.method public visitAll([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/s1243808733/android/dex/DexException;
        }
    .end annotation

    .line 95
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_f

    .line 98
    aget-object v2, p1, v1

    if-nez v2, :cond_9

    goto :goto_c

    .line 103
    :cond_9
    invoke-direct {p0, p1, v2}, Lcom/s1243808733/android/dx/io/CodeReader;->callVisit([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V

    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    return-void
.end method

.method public visitAll([S)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/s1243808733/android/dex/DexException;
        }
    .end annotation

    .line 109
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->decodeAll([S)[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/io/CodeReader;->visitAll([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V

    return-void
.end method
