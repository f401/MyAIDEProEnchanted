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
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x20e8e2d8f747e3b3L
    .end annotation

    const-wide v8, -0x5ee6fb035463468L    # -9.963052726542131E279

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/De$a;

    const-wide v2, -0x330ca0c1ebf37f0L

    const-wide v4, -0x330ca0c1ebf37f0L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/De$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5ee6fb035463468L    # -9.963052726542131E279

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/De$a;->j6:Ljava/math/BigInteger;

    new-instance v0, Labcd/De$a;

    invoke-direct {v0}, Labcd/De$a;-><init>()V

    sput-object v0, Labcd/De$a;->DW:Labcd/De$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x6f81d682b7fcb54L
    .end annotation

    const-wide v4, -0x39a924432aff8605L    # -7.244100305566512E30

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/De$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x39a924432aff8605L    # -7.244100305566512E30

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Labcd/De$a;->j6:Ljava/math/BigInteger;

    iput-object v0, p0, Labcd/De$a;->v5:Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x193f7740cdd150L
    .end annotation

    const-wide v4, 0x8b4f70b3be98975L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/De$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x8b4f70b3be98975L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Labcd/De$a;->v5:Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public getType()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4ec9a1bd968e9b4L
    .end annotation

    const-wide v2, -0x1d77fdc316ae2fd8L    # -4.424223140976051E166

    :try_start_0
    sget-boolean v0, Labcd/De$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1d77fdc316ae2fd8L    # -4.424223140976051E166

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/De$b;)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x91fe90e71f62fc0L
    .end annotation

    const-wide v6, 0x713a6dfde26e880L

    const/4 v2, 0x1

    :try_start_0
    sget-boolean v3, Labcd/De$a;->FH:Z

    if-eqz v3, :cond_0

    const-wide v4, 0x713a6dfde26e880L

    invoke-static {v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_2

    sget-object v2, Labcd/De$a;->j6:Ljava/math/BigInteger;

    iget-object v3, p0, Labcd/De$a;->v5:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-interface {p1}, Labcd/De$b;->getType()I

    move-result v3

    if-eqz v3, :cond_4

    if-eq v3, v2, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

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
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    sget-boolean v3, Labcd/De$a;->Hw:Z

    if-eqz v3, :cond_3

    invoke-static {v2, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v2

    :cond_4
    :try_start_1
    iget-object v3, p0, Labcd/De$a;->v5:Ljava/math/BigInteger;

    move-object v0, p1

    check-cast v0, Labcd/De$a;

    move-object v2, v0

    iget-object v2, v2, Labcd/De$a;->v5:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0
.end method

.method public j6()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x27ca587e4e782f21L
    .end annotation

    const-wide v2, -0xf532da8ff739ff9L    # -5.7275030557774964E234

    :try_start_0
    sget-boolean v0, Labcd/De$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xf532da8ff739ff9L    # -5.7275030557774964E234

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Labcd/De$a;->j6:Ljava/math/BigInteger;

    iget-object v1, p0, Labcd/De$a;->v5:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x33226c4b7294e128L
    .end annotation

    const-wide v2, -0x2698a4e1ee5abd14L    # -4.824867288674806E122

    :try_start_0
    sget-boolean v0, Labcd/De$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2698a4e1ee5abd14L    # -4.824867288674806E122

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/De$a;->v5:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
