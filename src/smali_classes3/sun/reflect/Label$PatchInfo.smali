.class Lsun/reflect/Label$PatchInfo;
.super Ljava/lang/Object;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/reflect/Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PatchInfo"
.end annotation


# instance fields
.field asm:Lsun/reflect/ClassFileAssembler;

.field instrBCI:S

.field patchBCI:S

.field stackDepth:I


# direct methods
.method constructor <init>(Lsun/reflect/ClassFileAssembler;SSI)V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lsun/reflect/Label$PatchInfo;->asm:Lsun/reflect/ClassFileAssembler;

    .line 45
    iput-short p2, p0, Lsun/reflect/Label$PatchInfo;->instrBCI:S

    .line 46
    iput-short p3, p0, Lsun/reflect/Label$PatchInfo;->patchBCI:S

    .line 47
    iput p4, p0, Lsun/reflect/Label$PatchInfo;->stackDepth:I

    .line 48
    return-void
.end method
