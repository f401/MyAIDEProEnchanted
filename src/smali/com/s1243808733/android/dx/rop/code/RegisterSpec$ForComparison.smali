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
.method static bridge synthetic -$$Nest$fgetlocal(Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;)Lcom/s1243808733/android/dx/rop/code/LocalItem;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;)I
    .registers 1

    iget p0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->reg:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    return-object p0
.end method

.method private constructor <init>()V
    .registers 1

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 672
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 676
    :cond_6
    check-cast p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 677
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->reg:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-static {p1, v0, v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->-$$Nest$mequals(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 4

    .line 683
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->reg:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->-$$Nest$smhashCodeOf(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)I

    move-result v0

    return v0
.end method

.method public set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V
    .registers 4

    .line 654
    iput p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->reg:I

    .line 655
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 656
    iput-object p3, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    return-void
.end method

.method public toRegisterSpec()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 6

    .line 666
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->reg:I

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;-><init>(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;Lcom/s1243808733/android/dx/rop/code/RegisterSpec-IA;)V

    return-object v0
.end method
