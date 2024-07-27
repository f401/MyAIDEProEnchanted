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
    .registers 3

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    iput-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->fallbackVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    move-object v0, v1

    check-cast v0, Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    iput-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->stringVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    move-object v0, v1

    check-cast v0, Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    iput-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->typeVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    move-object v0, v1

    check-cast v0, Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    iput-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->fieldVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    move-object v0, v1

    check-cast v0, Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    iput-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->methodVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    move-object v0, v1

    check-cast v0, Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    iput-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->methodAndProtoVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    check-cast v1, Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    iput-object v1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->callSiteVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    return-void
.end method

.method private callVisit([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;",
            "Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;",
            ")V"
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    .line 116
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/io/OpcodeInfo;->getIndexType(I)Lcom/s1243808733/android/dx/io/IndexType;

    move-result-object v1

    sget-object v2, Lcom/s1243808733/android/dx/io/IndexType;->STRING_REF:Lcom/s1243808733/android/dx/io/IndexType;

    if-ne v1, v2, :cond_3

    .line 117
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->stringVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    .line 125
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->fallbackVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    .line 129
    :cond_1
    if-eqz v0, :cond_2

    .line 130
    invoke-interface {v0, p1, p2}, Lcom/s1243808733/android/dx/io/CodeReader$Visitor;->visit([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V

    :cond_2
    return-void

    .line 117
    :cond_3
    sget-object v2, Lcom/s1243808733/android/dx/io/IndexType;->TYPE_REF:Lcom/s1243808733/android/dx/io/IndexType;

    if-ne v1, v2, :cond_4

    .line 118
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->typeVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/s1243808733/android/dx/io/IndexType;->FIELD_REF:Lcom/s1243808733/android/dx/io/IndexType;

    if-ne v1, v2, :cond_5

    .line 119
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->fieldVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/s1243808733/android/dx/io/IndexType;->METHOD_REF:Lcom/s1243808733/android/dx/io/IndexType;

    if-ne v1, v2, :cond_6

    .line 120
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->methodVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/s1243808733/android/dx/io/IndexType;->METHOD_AND_PROTO_REF:Lcom/s1243808733/android/dx/io/IndexType;

    if-ne v1, v2, :cond_7

    .line 121
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->methodAndProtoVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/s1243808733/android/dx/io/IndexType;->CALL_SITE_REF:Lcom/s1243808733/android/dx/io/IndexType;

    if-ne v1, v2, :cond_0

    .line 122
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/CodeReader;->callSiteVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    goto :goto_0
.end method


# virtual methods
.method public setAllVisitors(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/io/CodeReader$Visitor;",
            ")V"
        }
    .end annotation

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/io/CodeReader$Visitor;",
            ")V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->callSiteVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    return-void
.end method

.method public setFallbackVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/io/CodeReader$Visitor;",
            ")V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->fallbackVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    return-void
.end method

.method public setFieldVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/io/CodeReader$Visitor;",
            ")V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->fieldVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    return-void
.end method

.method public setMethodAndProtoVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/io/CodeReader$Visitor;",
            ")V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->methodAndProtoVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    return-void
.end method

.method public setMethodVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/io/CodeReader$Visitor;",
            ")V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->methodVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    return-void
.end method

.method public setStringVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/io/CodeReader$Visitor;",
            ")V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->stringVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    return-void
.end method

.method public setTypeVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/io/CodeReader$Visitor;",
            ")V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/CodeReader;->typeVisitor:Lcom/s1243808733/android/dx/io/CodeReader$Visitor;

    return-void
.end method

.method public visitAll([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;",
            ")V^",
            "Lcom/s1243808733/android/dex/DexException;"
        }
    .end annotation

    .line 95
    array-length v1, p1

    .line 97
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    .line 98
    :cond_0
    aget-object v2, p1, v0

    .line 99
    if-nez v2, :cond_1

    .line 97
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/s1243808733/android/dx/io/CodeReader;->callVisit([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V

    goto :goto_1
.end method

.method public visitAll([S)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S)V^",
            "Lcom/s1243808733/android/dex/DexException;"
        }
    .end annotation

    .line 108
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->decodeAll([S)[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object v0

    .line 110
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/io/CodeReader;->visitAll([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V

    return-void
.end method
