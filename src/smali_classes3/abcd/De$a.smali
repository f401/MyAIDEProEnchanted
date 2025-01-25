.class Labcd/De$a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/De$b;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/De;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final DW:Labcd/De$a;
    .annotation runtime Labcd/ru;
        field = 0xa3925958023e5e1L
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static final j6:Ljava/math/BigInteger;
    .annotation runtime Labcd/ru;
        field = 0x3edee66eb3bfc18fL
    .end annotation
.end field


# instance fields
.field private final v5:Ljava/math/BigInteger;
    .annotation runtime Labcd/ru;
        field = 0x1eeb8236897776e0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x20e8e2d8f747e3b3L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x5ee6fb035463468L  # -9.963052726542131E279

    :try_start_6
    const-class v3, Labcd/De$a;

    const-wide v4, -0x330ca0c1ebf37f0L

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/De$a;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v3, Labcd/De$a;->j6:Ljava/math/BigInteger;

    new-instance v3, Labcd/De$a;

    invoke-direct {v3}, Labcd/De$a;-><init>()V

    sput-object v3, Labcd/De$a;->DW:Labcd/De$a;
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v3

    sget-boolean v4, Labcd/De$a;->Hw:Z

    if-eqz v4, :cond_30

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v3
.end method

.method private constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x6f81d682b7fcb54L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x39a924432aff8605L  # -7.244100305566512E30

    :try_start_6
    sget-boolean v3, Labcd/De$a;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v3, Labcd/De$a;->j6:Ljava/math/BigInteger;

    iput-object v3, p0, Labcd/De$a;->v5:Ljava/math/BigInteger;
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v3

    sget-boolean v4, Labcd/De$a;->Hw:Z

    if-eqz v4, :cond_1d

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x193f7740cdd150L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x8b4f70b3be98975L

    :try_start_6
    sget-boolean v3, Labcd/De$a;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Labcd/De$a;->v5:Ljava/math/BigInteger;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Labcd/De$a;->Hw:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v3
.end method


# virtual methods
.method public getType()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4ec9a1bd968e9b4L
    .end annotation

    const-wide v0, -0x1d77fdc316ae2fd8L  # -4.424223140976051E166

    :try_start_5
    sget-boolean v2, Labcd/De$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/De$a;->Hw:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6(Labcd/De$b;)I
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x91fe90e71f62fc0L
    .end annotation

    const-wide v0, 0x713a6dfde26e880L

    :try_start_5
    sget-boolean v2, Labcd/De$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    if-nez p1, :cond_19

    sget-object v3, Labcd/De$a;->j6:Ljava/math/BigInteger;

    iget-object v4, p0, Labcd/De$a;->v5:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_19
    invoke-interface {p1}, Labcd/De$b;->getType()I

    move-result v3

    if-eqz v3, :cond_41

    if-eq v3, v2, :cond_40

    const/4 v4, 0x2

    if-ne v3, v4, :cond_25

    return v2

    :cond_25
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_40
    return v2

    :cond_41
    iget-object v2, p0, Labcd/De$a;->v5:Ljava/math/BigInteger;

    move-object v3, p1

    check-cast v3, Labcd/De$a;

    iget-object v3, v3, Labcd/De$a;->v5:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_4d

    return p1

    :catchall_4d
    move-exception v2

    sget-boolean v3, Labcd/De$a;->Hw:Z

    if-eqz v3, :cond_55

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    throw v2
.end method

.method public j6()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x27ca587e4e782f21L
    .end annotation

    const-wide v0, -0xf532da8ff739ff9L  # -5.7275030557774964E234

    :try_start_5
    sget-boolean v2, Labcd/De$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Labcd/De$a;->j6:Ljava/math/BigInteger;

    iget-object v3, p0, Labcd/De$a;->v5:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/De$a;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x33226c4b7294e128L
    .end annotation

    const-wide v0, -0x2698a4e1ee5abd14L  # -4.824867288674806E122

    :try_start_5
    sget-boolean v2, Labcd/De$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/De$a;->v5:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/De$a;->Hw:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method
