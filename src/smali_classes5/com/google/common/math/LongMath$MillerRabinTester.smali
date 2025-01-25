.class abstract enum Lcom/google/common/math/LongMath$MillerRabinTester;
.super Ljava/lang/Enum;
.source "LongMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LongMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "MillerRabinTester"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/math/LongMath$MillerRabinTester;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/common/math/LongMath$MillerRabinTester;

.field public static final enum LARGE:Lcom/google/common/math/LongMath$MillerRabinTester;

.field public static final enum SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1068
    new-instance v0, Lcom/google/common/math/LongMath$MillerRabinTester$1;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v3}, Lcom/google/common/math/LongMath$MillerRabinTester$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;

    .line 1086
    new-instance v0, Lcom/google/common/math/LongMath$MillerRabinTester$2;

    const-string v1, "LARGE"

    invoke-direct {v0, v1, v4}, Lcom/google/common/math/LongMath$MillerRabinTester$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->LARGE:Lcom/google/common/math/LongMath$MillerRabinTester;

    .line 1066
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/common/math/LongMath$MillerRabinTester;

    sget-object v2, Lcom/google/common/math/LongMath$MillerRabinTester;->SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/common/math/LongMath$MillerRabinTester;->$VALUES:[Lcom/google/common/math/LongMath$MillerRabinTester;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1066
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/math/LongMath$1;)V
    .registers 4

    .line 1066
    invoke-direct {p0, p1, p2}, Lcom/google/common/math/LongMath$MillerRabinTester;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private powMod(JJJ)J
    .registers 16

    .line 1169
    const-wide/16 v2, 0x1

    move-wide v4, p1

    .line 1170
    :goto_3
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1f

    .line 1171
    const-wide/16 v0, 0x1

    and-long/2addr v0, p3

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_18

    move-object v1, p0

    move-wide v6, p5

    .line 1172
    invoke-virtual/range {v1 .. v7}, Lcom/google/common/math/LongMath$MillerRabinTester;->mulMod(JJJ)J

    move-result-wide v2

    .line 1174
    :cond_18
    invoke-virtual {p0, v4, v5, p5, p6}, Lcom/google/common/math/LongMath$MillerRabinTester;->squareMod(JJ)J

    move-result-wide v4

    .line 1170
    const/4 v0, 0x1

    shr-long/2addr p3, v0

    goto :goto_3

    .line 1176
    :cond_1f
    return-wide v2
.end method

.method static test(JJ)Z
    .registers 6

    .line 1158
    const-wide v0, 0xb504f333L

    cmp-long v0, p2, v0

    if-gtz v0, :cond_10

    sget-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;

    :goto_b
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/math/LongMath$MillerRabinTester;->testWitness(JJ)Z

    move-result v0

    return v0

    :cond_10
    sget-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->LARGE:Lcom/google/common/math/LongMath$MillerRabinTester;

    goto :goto_b
.end method

.method private testWitness(JJ)Z
    .registers 14

    .line 1181
    const-wide/16 v0, 0x1

    sub-long v0, p3, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v8

    .line 1182
    rem-long v2, p1, p3

    .line 1184
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_12

    .line 1185
    const/4 v0, 0x1

    .line 1202
    :goto_11
    return v0

    .line 1188
    :cond_12
    const-wide/16 v0, 0x1

    sub-long v0, p3, v0

    shr-long v4, v0, v8

    move-object v1, p0

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/common/math/LongMath$MillerRabinTester;->powMod(JJJ)J

    move-result-wide v2

    .line 1192
    const-wide/16 v0, 0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_26

    .line 1193
    const/4 v0, 0x1

    goto :goto_11

    .line 1195
    :cond_26
    const/4 v0, 0x0

    .line 1196
    :goto_27
    const-wide/16 v4, 0x1

    sub-long v4, p3, v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3a

    .line 1197
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v8, :cond_35

    .line 1198
    const/4 v0, 0x0

    goto :goto_11

    .line 1200
    :cond_35
    invoke-virtual {p0, v2, v3, p3, p4}, Lcom/google/common/math/LongMath$MillerRabinTester;->squareMod(JJ)J

    move-result-wide v2

    goto :goto_27

    .line 1202
    :cond_3a
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/math/LongMath$MillerRabinTester;
    .registers 2

    .line 1066
    const-class v0, Lcom/google/common/math/LongMath$MillerRabinTester;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/math/LongMath$MillerRabinTester;

    return-object v0
.end method

.method public static values()[Lcom/google/common/math/LongMath$MillerRabinTester;
    .registers 1

    .line 1066
    sget-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->$VALUES:[Lcom/google/common/math/LongMath$MillerRabinTester;

    invoke-virtual {v0}, [Lcom/google/common/math/LongMath$MillerRabinTester;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/math/LongMath$MillerRabinTester;

    return-object v0
.end method


# virtual methods
.method abstract mulMod(JJJ)J
.end method

.method abstract squareMod(JJ)J
.end method
