.class Lsun/reflect/Label;
.super Ljava/lang/Object;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/reflect/Label$PatchInfo;
    }
.end annotation


# instance fields
.field private patches:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/reflect/Label;->patches:Ljava/util/List;

    .line 59
    return-void
.end method


# virtual methods
.method add(Lsun/reflect/ClassFileAssembler;SSI)V
    .registers 7

    .line 66
    iget-object v0, p0, Lsun/reflect/Label;->patches:Ljava/util/List;

    new-instance v1, Lsun/reflect/Label$PatchInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Lsun/reflect/Label$PatchInfo;-><init>(Lsun/reflect/ClassFileAssembler;SSI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public bind()V
    .registers 6

    .line 70
    iget-object v0, p0, Lsun/reflect/Label;->patches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/reflect/Label$PatchInfo;

    .line 72
    iget-object v2, v0, Lsun/reflect/Label$PatchInfo;->asm:Lsun/reflect/ClassFileAssembler;

    invoke-virtual {v2}, Lsun/reflect/ClassFileAssembler;->getLength()S

    move-result v2

    .line 73
    iget-short v3, v0, Lsun/reflect/Label$PatchInfo;->instrBCI:S

    sub-int/2addr v2, v3

    int-to-short v2, v2

    .line 74
    iget-object v3, v0, Lsun/reflect/Label$PatchInfo;->asm:Lsun/reflect/ClassFileAssembler;

    iget-short v4, v0, Lsun/reflect/Label$PatchInfo;->patchBCI:S

    invoke-virtual {v3, v4, v2}, Lsun/reflect/ClassFileAssembler;->emitShort(SS)V

    .line 75
    iget-object v2, v0, Lsun/reflect/Label$PatchInfo;->asm:Lsun/reflect/ClassFileAssembler;

    iget v0, v0, Lsun/reflect/Label$PatchInfo;->stackDepth:I

    invoke-virtual {v2, v0}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method
