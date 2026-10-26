.class public Lorg/objectweb/asm/tree/analysis/BasicValue;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/objectweb/asm/tree/analysis/Value;


# static fields
.field public static final DOUBLE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

.field public static final FLOAT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

.field public static final INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

.field public static final LONG_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

.field public static final REFERENCE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

.field public static final RETURNADDRESS_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

.field public static final UNINITIALIZED_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;


# instance fields
.field private final type:Lorg/objectweb/asm/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lorg/objectweb/asm/tree/analysis/BasicValue;->_clinit_()V

    new-instance v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    sput-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->UNINITIALIZED_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    new-instance v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    sget-object v1, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    sput-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    new-instance v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    sget-object v1, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    sput-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    new-instance v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    sget-object v1, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    sput-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->LONG_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    new-instance v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    sget-object v1, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    sput-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    new-instance v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    const-string v1, "java/lang/Object"

    invoke-static {v1}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    sput-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    new-instance v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    sget-object v1, Lorg/objectweb/asm/Type;->VOID_TYPE:Lorg/objectweb/asm/Type;

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    sput-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->RETURNADDRESS_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    return-void
.end method

.method static _clinit_()V
    .locals 0

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p1, p0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    instance-of v1, p1, Lorg/objectweb/asm/tree/analysis/BasicValue;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    if-nez v1, :cond_3

    check-cast p1, Lorg/objectweb/asm/tree/analysis/BasicValue;

    iget-object v1, p1, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    check-cast p1, Lorg/objectweb/asm/tree/analysis/BasicValue;

    iget-object v1, p1, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getType()Lorg/objectweb/asm/Type;
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isReference()Z
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->UNINITIALIZED_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    if-ne p0, v0, :cond_0

    const-string v0, "."

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->RETURNADDRESS_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    if-ne p0, v0, :cond_1

    const-string v0, "A"

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    if-ne p0, v0, :cond_2

    const-string v0, "R"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
