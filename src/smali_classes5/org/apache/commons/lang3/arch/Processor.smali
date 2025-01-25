.class public Lorg/apache/commons/lang3/arch/Processor;
.super Ljava/lang/Object;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/arch/Processor$Arch;,
        Lorg/apache/commons/lang3/arch/Processor$Type;
    }
.end annotation


# instance fields
.field private final arch:Lorg/apache/commons/lang3/arch/Processor$Arch;

.field private final type:Lorg/apache/commons/lang3/arch/Processor$Type;


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V
    .registers 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lorg/apache/commons/lang3/arch/Processor;->arch:Lorg/apache/commons/lang3/arch/Processor$Arch;

    .line 121
    iput-object p2, p0, Lorg/apache/commons/lang3/arch/Processor;->type:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 122
    return-void
.end method


# virtual methods
.method public getArch()Lorg/apache/commons/lang3/arch/Processor$Arch;
    .registers 2

    .line 132
    iget-object v0, p0, Lorg/apache/commons/lang3/arch/Processor;->arch:Lorg/apache/commons/lang3/arch/Processor$Arch;

    return-object v0
.end method

.method public getType()Lorg/apache/commons/lang3/arch/Processor$Type;
    .registers 2

    .line 143
    iget-object v0, p0, Lorg/apache/commons/lang3/arch/Processor;->type:Lorg/apache/commons/lang3/arch/Processor$Type;

    return-object v0
.end method

.method public is32Bit()Z
    .registers 3

    .line 152
    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    iget-object v1, p0, Lorg/apache/commons/lang3/arch/Processor;->arch:Lorg/apache/commons/lang3/arch/Processor$Arch;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public is64Bit()Z
    .registers 3

    .line 161
    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    iget-object v1, p0, Lorg/apache/commons/lang3/arch/Processor;->arch:Lorg/apache/commons/lang3/arch/Processor$Arch;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isIA64()Z
    .registers 3

    .line 179
    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    iget-object v1, p0, Lorg/apache/commons/lang3/arch/Processor;->type:Lorg/apache/commons/lang3/arch/Processor$Type;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isPPC()Z
    .registers 3

    .line 188
    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

    iget-object v1, p0, Lorg/apache/commons/lang3/arch/Processor;->type:Lorg/apache/commons/lang3/arch/Processor$Type;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isX86()Z
    .registers 3

    .line 170
    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->X86:Lorg/apache/commons/lang3/arch/Processor$Type;

    iget-object v1, p0, Lorg/apache/commons/lang3/arch/Processor;->type:Lorg/apache/commons/lang3/arch/Processor$Type;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
