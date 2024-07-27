.class Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;
.super Ljava/lang/Object;
.source "RegisterSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForComparison"
.end annotation


# instance fields
.field private local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

.field private reg:I

.field private type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$L1000011(Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->reg:I

    return v0
.end method

.method static synthetic access$L1000012(Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    return-object v0
.end method

.method static synthetic access$L1000013(Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;)Lcom/s1243808733/android/dx/rop/code/LocalItem;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    return-object v0
.end method

.method static synthetic access$S1000011(Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->reg:I

    return-void
.end method

.method static synthetic access$S1000012(Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    return-void
.end method

.method static synthetic access$S1000013(Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 672
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-nez v0, :cond_0

    .line 673
    const/4 v0, 0x0

    .line 677
    :goto_0
    return v0

    .line 676
    :cond_0
    check-cast p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 677
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->reg:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-static {p1, v0, v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->access$1000008(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 683
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->reg:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->access$1000009(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)I

    move-result v0

    return v0
.end method

.method public set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/type/TypeBearer;",
            "Lcom/s1243808733/android/dx/rop/code/LocalItem;",
            ")V"
        }
    .end annotation

    .line 654
    iput p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->reg:I

    .line 655
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 656
    iput-object p3, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    return-void
.end method

.method public toRegisterSpec()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 5

    .line 666
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->reg:I

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;-><init>(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V

    return-object v0
.end method
