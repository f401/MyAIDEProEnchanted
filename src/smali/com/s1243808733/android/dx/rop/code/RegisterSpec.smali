.class public final Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
.super Ljava/lang/Object;
.source "RegisterSpec.java"

# interfaces
.implements Lcom/s1243808733/android/dx/rop/type/TypeBearer;
.implements Lcom/s1243808733/android/dx/util/ToHuman;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/s1243808733/android/dx/rop/type/TypeBearer;",
        "Lcom/s1243808733/android/dx/util/ToHuman;",
        "Ljava/lang/Comparable<",
        "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
        ">;"
    }
.end annotation


# static fields
.field public static final PREFIX:Ljava/lang/String; = "v"

.field private static final theInterningItem:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;",
            ">;"
        }
    .end annotation
.end field

.field private static final theInterns:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

.field private final reg:I

.field private final type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;


# direct methods
.method static bridge synthetic -$$Nest$mequals(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->equals(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smhashCodeOf(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->hashCodeOf(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x2710

    const/high16 v2, 0x3f400000  # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->theInterns:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$1;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$1;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->theInterningItem:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V
    .registers 4

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_16

    if-eqz p2, :cond_e

    .line 164
    iput p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    .line 165
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 166
    iput-object p3, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    return-void

    .line 161
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "reg < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;Lcom/s1243808733/android/dx/rop/code/RegisterSpec-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;-><init>(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V

    return-void
.end method

.method public static clearInternTable()V
    .registers 1

    .line 622
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->theInterns:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private equals(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z
    .registers 5

    .line 237
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    if-ne v0, p1, :cond_1a

    iget-object p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 238
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-eq p1, p3, :cond_18

    if-eqz p1, :cond_1a

    .line 240
    invoke-virtual {p1, p3}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    :cond_18
    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private static hashCodeOf(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)I
    .registers 3

    if-eqz p2, :cond_7

    .line 292
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->hashCode()I

    move-result p2

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    .line 294
    :goto_8
    mul-int/lit8 p2, p2, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x1f

    add-int/2addr p2, p0

    return p2
.end method

.method private static intern(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4

    .line 71
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->theInterningItem:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;

    .line 72
    invoke-virtual {v0, p0, p1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V

    .line 73
    sget-object p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->theInterns:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-nez p1, :cond_22

    .line 75
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->toRegisterSpec()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-eqz p0, :cond_22

    return-object p0

    :cond_22
    return-object p1
.end method

.method public static make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 3

    .line 95
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->intern(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p0

    return-object p0
.end method

.method public static make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 3

    if-eqz p2, :cond_7

    .line 115
    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->intern(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p0

    return-object p0

    .line 112
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "local  == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeLocalOptional(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 3

    .line 133
    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->intern(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p0

    return-object p0
.end method

.method public static regString(I)Ljava/lang/String;
    .registers 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private toString0(Z)Ljava/lang/String;
    .registers 5

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 597
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-eqz v1, :cond_1e

    .line 601
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :cond_1e
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    .line 605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 607
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    if-eq v1, v2, :cond_57

    .line 608
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_42

    .line 609
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    instance-of v2, v1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eqz v2, :cond_42

    .line 610
    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57

    :cond_42
    if-eqz p1, :cond_52

    .line 611
    iget-object p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    instance-of v1, p1, Lcom/s1243808733/android/dx/rop/cst/Constant;

    if-eqz v1, :cond_52

    .line 612
    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->toHuman()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57

    .line 614
    :cond_52
    iget-object p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 618
    :cond_57
    :goto_57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)I
    .registers 7

    .line 252
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    iget v1, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    const/4 v3, 0x1

    if-le v0, v1, :cond_c

    return v3

    :cond_c
    const/4 v0, 0x0

    if-ne p0, p1, :cond_10

    return v0

    .line 260
    :cond_10
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    iget-object v4, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v4}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/rop/type/Type;->compareTo(Lcom/s1243808733/android/dx/rop/type/Type;)I

    move-result v1

    if-eqz v1, :cond_23

    return v1

    .line 266
    :cond_23
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-nez v1, :cond_2d

    .line 267
    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-nez p1, :cond_2c

    const/4 v2, 0x0

    :cond_2c
    return v2

    .line 268
    :cond_2d
    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-nez p1, :cond_32

    return v3

    .line 272
    :cond_32
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->compareTo(Lcom/s1243808733/android/dx/rop/code/LocalItem;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 30
    check-cast p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->compareTo(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 176
    :cond_4
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-nez v0, :cond_21

    .line 177
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;

    if-eqz v0, :cond_1f

    .line 178
    check-cast p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;

    .line 179
    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->-$$Nest$fgetreg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;)I

    move-result v0

    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->-$$Nest$fgettype(Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v1

    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->-$$Nest$fgetlocal(Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;)Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->equals(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z

    move-result p1

    return p1

    :cond_1f
    const/4 p1, 0x0

    return p1

    .line 184
    :cond_21
    check-cast p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 185
    iget v0, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-direct {p0, v0, v1, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->equals(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z

    move-result p1

    return p1
.end method

.method public equalsUsingSimpleType(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .registers 4

    .line 199
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->matchesVariable(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 203
    :cond_8
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    iget p1, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    if-ne v0, p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public final getBasicFrameType()I
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getBasicFrameType()I

    move-result v0

    return v0
.end method

.method public final getBasicType()I
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getBasicType()I

    move-result v0

    return v0
.end method

.method public getCategory()I
    .registers 2

    .line 391
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v0

    return v0
.end method

.method public getFrameType()Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getFrameType()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    return-object v0
.end method

.method public getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    return-object v0
.end method

.method public getNextReg()I
    .registers 3

    .line 379
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getReg()I
    .registers 2

    .line 346
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    return v0
.end method

.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 2

    .line 356
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 278
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->hashCodeOf(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)I

    move-result v0

    return v0
.end method

.method public intersect(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Z)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 7

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    const/4 v0, 0x0

    if-eqz p1, :cond_5e

    .line 461
    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    if-eq v1, v2, :cond_f

    goto :goto_5e

    .line 466
    :cond_f
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_21

    .line 467
    :cond_1e
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    goto :goto_22

    :cond_21
    :goto_21
    move-object v1, v0

    .line 468
    :goto_22
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-ne v1, v2, :cond_28

    const/4 v2, 0x1

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    if-eqz p2, :cond_2e

    if-nez v2, :cond_2e

    return-object v0

    .line 474
    :cond_2e
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    .line 475
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    if-eq p2, v3, :cond_39

    return-object v0

    .line 483
    :cond_39
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    iget-object p2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 485
    :cond_47
    iget-object p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    if-ne p2, p1, :cond_4e

    if-eqz v2, :cond_4e

    return-object p0

    :cond_4e
    if-nez v1, :cond_57

    .line 490
    iget p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    invoke-static {p1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    goto :goto_5d

    .line 491
    :cond_57
    iget p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    invoke-static {p1, p2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    :goto_5d
    return-object p1

    :cond_5e
    :goto_5e
    return-object v0
.end method

.method public isCategory1()Z
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v0

    return v0
.end method

.method public isCategory2()Z
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v0

    return v0
.end method

.method public final isConstant()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isEvenRegister()Z
    .registers 3

    .line 585
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public matchesVariable(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 220
    :cond_4
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    iget-object v2, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-eq v1, p1, :cond_24

    if-eqz v1, :cond_25

    .line 222
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    :cond_24
    const/4 v0, 0x1

    :cond_25
    return v0
.end method

.method public regString()Ljava/lang/String;
    .registers 2

    .line 424
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->regString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 307
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->toString0(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 301
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->toString0(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withLocalItem(Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4

    .line 572
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-eq v0, p1, :cond_16

    if-eqz v0, :cond_d

    .line 573
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    .line 578
    :cond_d
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-static {v0, v1, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    return-object p1

    :cond_16
    :goto_16
    return-object p0
.end method

.method public withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 3

    if-nez p1, :cond_3

    return-object p0

    .line 532
    :cond_3
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    return-object p1
.end method

.method public withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4

    .line 502
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    if-ne v0, p1, :cond_5

    return-object p0

    .line 506
    :cond_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-static {p1, v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    return-object p1
.end method

.method public withSimpleType()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4

    .line 544
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 547
    instance-of v1, v0, Lcom/s1243808733/android/dx/rop/type/Type;

    if-eqz v1, :cond_a

    .line 548
    move-object v1, v0

    check-cast v1, Lcom/s1243808733/android/dx/rop/type/Type;

    goto :goto_e

    .line 550
    :cond_a
    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    .line 553
    :goto_e
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isUninitialized()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 554
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getInitializedType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    :cond_18
    if-ne v1, v0, :cond_1b

    return-object p0

    .line 561
    :cond_1b
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    return-object v0
.end method

.method public withType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4

    .line 517
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-static {v0, p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    return-object p1
.end method
