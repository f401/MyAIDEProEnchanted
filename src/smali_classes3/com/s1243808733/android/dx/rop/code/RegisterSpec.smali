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
        "Ljava/lang/Comparable",
        "<",
        "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
        ">;"
    }
.end annotation


# static fields
.field public static final PREFIX:Ljava/lang/String; = "v"

.field private static final theInterningItem:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;",
            ">;"
        }
    .end annotation
.end field

.field private static final theInterns:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
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
.method static final constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x2710

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->theInterns:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$100000000;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$100000000;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->theInterningItem:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V
    .registers 6

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    if-gez p1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reg < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    if-nez p2, :cond_1

    .line 161
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    iput p1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    .line 165
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 166
    iput-object p3, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    return-void
.end method

.method static synthetic access$1000008(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->equals(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000009(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)I
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->hashCodeOf(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)I

    move-result v0

    return v0
.end method

.method public static clearInternTable()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 622
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->theInterns:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private equals(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z
    .registers 5

    .line 237
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-eq v0, p3, :cond_1

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-virtual {v0, p3}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static hashCodeOf(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)I
    .registers 5

    .line 292
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->hashCode()I

    move-result v0

    .line 294
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 295
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p0

    return v0

    .line 292
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static intern(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 5

    .line 71
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->theInterningItem:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;

    .line 72
    invoke-virtual {v0, p0, p1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V

    .line 73
    sget-object v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->theInterns:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 74
    if-nez v1, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->toRegisterSpec()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 76
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->theInterns:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 77
    if-eqz v0, :cond_0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 3

    .line 95
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-static {p0, p1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->intern(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    return-object v0
.end method

.method public static make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 5

    .line 111
    if-nez p2, :cond_0

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "local  == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->intern(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    return-object v0
.end method

.method public static makeLocalOptional(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4

    .line 133
    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->intern(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    return-object v0
.end method

.method public static regString(I)Ljava/lang/String;
    .registers 3

    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toString0(Z)Ljava/lang/String;
    .registers 5

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 597
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 605
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 607
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    if-eq v0, v2, :cond_1

    .line 608
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    instance-of v0, v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 611
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    instance-of v0, v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    if-eqz v0, :cond_3

    .line 612
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 614
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)I
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 252
    iget v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    iget v4, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    if-ge v2, v4, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    iget v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    iget v4, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    if-le v2, v4, :cond_2

    move v0, v1

    .line 255
    goto :goto_0

    .line 256
    :cond_2
    if-eq p0, p1, :cond_4

    .line 260
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    iget-object v4, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v4}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/rop/type/Type;->compareTo(Lcom/s1243808733/android/dx/rop/type/Type;)I

    move-result v2

    .line 262
    if-eqz v2, :cond_3

    move v0, v2

    .line 263
    goto :goto_0

    .line 266
    :cond_3
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-nez v2, :cond_5

    .line 267
    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-nez v1, :cond_0

    :cond_4
    move v0, v3

    goto :goto_0

    .line 268
    :cond_5
    iget-object v0, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-nez v0, :cond_6

    move v0, v1

    .line 269
    goto :goto_0

    .line 272
    :cond_6
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->compareTo(Lcom/s1243808733/android/dx/rop/code/LocalItem;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->compareTo(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 172
    if-ne p0, p1, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    .line 176
    :cond_0
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-nez v0, :cond_2

    .line 177
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;

    if-eqz v0, :cond_1

    .line 178
    check-cast p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;

    .line 179
    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->access$L1000011(Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;)I

    move-result v0

    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->access$L1000012(Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v1

    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;->access$L1000013(Lcom/s1243808733/android/dx/rop/code/RegisterSpec$ForComparison;)Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->equals(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z

    move-result v0

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 184
    :cond_2
    check-cast p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 185
    iget v0, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget-object v2, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-direct {p0, v0, v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->equals(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public equalsUsingSimpleType(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .registers 5

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->matchesVariable(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    iget v2, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getBasicFrameType()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getBasicFrameType()I

    move-result v0

    return v0
.end method

.method public final getBasicType()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

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
    .annotation runtime Ljava/lang/Override;
    .end annotation

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
    .annotation runtime Ljava/lang/Override;
    .end annotation

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
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 278
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->hashCodeOf(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)I

    move-result v0

    return v0
.end method

.method public intersect(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Z)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 8

    const/4 v0, 0x0

    .line 456
    if-ne p0, p1, :cond_0

    move-object v0, p0

    .line 490
    :goto_0
    return-object v0

    .line 461
    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 462
    :cond_1
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    goto :goto_0

    .line 465
    :cond_2
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    move-object v1, v0

    check-cast v1, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    .line 468
    :goto_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-eq v1, v2, :cond_5

    const/4 v2, 0x0

    move v3, v2

    .line 470
    :goto_2
    if-eqz p2, :cond_6

    if-nez v3, :cond_6

    .line 471
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    goto :goto_0

    .line 465
    :cond_4
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    goto :goto_1

    .line 468
    :cond_5
    const/4 v2, 0x1

    move v3, v2

    goto :goto_2

    .line 474
    :cond_6
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    .line 475
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v4

    .line 478
    if-eq v2, v4, :cond_7

    .line 479
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    goto :goto_0

    .line 482
    :cond_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 485
    :goto_3
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    if-ne v0, v2, :cond_9

    if-eqz v3, :cond_9

    move-object v0, p0

    .line 487
    goto :goto_0

    :cond_8
    move-object v0, v2

    .line 482
    goto :goto_3

    .line 490
    :cond_9
    if-nez v1, :cond_a

    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    goto :goto_0

    :cond_a
    iget v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    invoke-static {v2, v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    goto :goto_0
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
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public isEvenRegister()Z
    .registers 2

    .line 585
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public matchesVariable(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .registers 5

    const/4 v0, 0x0

    .line 216
    if-nez p1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    iget-object v2, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    iget-object v2, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    iget-object v2, p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
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
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 307
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->toString0(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

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

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-static {v0, v1, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p0

    goto :goto_0
.end method

.method public withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 3

    .line 528
    if-nez p1, :cond_0

    .line 532
    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p0

    goto :goto_0
.end method

.method public withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4

    .line 502
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    if-ne v0, p1, :cond_0

    .line 506
    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-static {p1, v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p0

    goto :goto_0
.end method

.method public withSimpleType()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4

    .line 544
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->type:Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 545
    instance-of v0, v1, Lcom/s1243808733/android/dx/rop/type/Type;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 548
    check-cast v0, Lcom/s1243808733/android/dx/rop/type/Type;

    .line 553
    :goto_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isUninitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 554
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getInitializedType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 557
    :cond_0
    if-ne v0, v1, :cond_2

    .line 561
    :goto_1
    return-object p0

    .line 550
    :cond_1
    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    goto :goto_0

    .line 561
    :cond_2
    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-static {v1, v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p0

    goto :goto_1
.end method

.method public withType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4

    .line 517
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->reg:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->local:Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-static {v0, p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    return-object v0
.end method
