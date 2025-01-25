.class public final enum Labcd/cm$a;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/cm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Labcd/cm$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/cm$a;

.field public static final enum FH:Labcd/cm$a;

.field private static final Hw:[Labcd/cm$a;

.field private static Zo:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static final enum j6:Labcd/cm$a;

.field private static v5:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x25321ec8bc77d668L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xbe71f5a12c5c2e5L

    :try_start_6
    const-class v3, Labcd/cm$a;

    const-wide v4, -0x17e028fe2b980fa4L  # -3.631688094082932E193

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/cm$a;->v5:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Labcd/cm$a;

    const-string v4, "PURCHASED"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Labcd/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/cm$a;->j6:Labcd/cm$a;

    new-instance v4, Labcd/cm$a;

    const-string v6, "CANCELED"

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Labcd/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Labcd/cm$a;->DW:Labcd/cm$a;

    new-instance v6, Labcd/cm$a;

    const-string v8, "REFUNDED"

    const/4 v9, 0x2

    invoke-direct {v6, v8, v9}, Labcd/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Labcd/cm$a;->FH:Labcd/cm$a;

    const/4 v8, 0x3

    new-array v8, v8, [Labcd/cm$a;

    aput-object v3, v8, v5

    aput-object v4, v8, v7

    aput-object v6, v8, v9

    sput-object v8, Labcd/cm$a;->Hw:[Labcd/cm$a;
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_41

    return-void

    :catchall_41
    move-exception v3

    sget-boolean v4, Labcd/cm$a;->Zo:Z

    if-eqz v4, :cond_49

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_49
    throw v3
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x57dd2ead75004cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/cm$a;->v5:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1d0e65e55f883350L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    sget-boolean v1, Labcd/cm$a;->Zo:Z

    if-eqz v1, :cond_2b

    const-wide v2, 0x1d0e65e55f883350L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public static j6(I)Labcd/cm$a;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x4135f31d4959008L

    :try_start_6
    sget-boolean v3, Labcd/cm$a;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_d
    invoke-static {}, Labcd/cm$a;->values()[Labcd/cm$a;

    move-result-object v3

    if-ltz p0, :cond_1a

    array-length v4, v3
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_1d

    if-lt p0, v4, :cond_17

    goto :goto_1a

    :cond_17
    aget-object p0, v3, p0

    return-object p0

    :cond_1a
    :goto_1a
    :try_start_1a
    sget-object p0, Labcd/cm$a;->DW:Labcd/cm$a;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1d

    return-object p0

    :catchall_1d
    move-exception v3

    sget-boolean v4, Labcd/cm$a;->Zo:Z

    if-eqz v4, :cond_2a

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v3
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/cm$a;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x9f4faa41a305d87L

    :try_start_6
    sget-boolean v3, Labcd/cm$a;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-class v3, Labcd/cm$a;

    invoke-static {v3, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Labcd/cm$a;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/cm$a;->Zo:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static values()[Labcd/cm$a;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, 0x2a3a7641fa7735f5L  # 2.88445173519136E-105

    :try_start_6
    sget-boolean v3, Labcd/cm$a;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Labcd/cm$a;->Hw:[Labcd/cm$a;

    invoke-virtual {v3}, [Labcd/cm$a;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Labcd/cm$a;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/cm$a;->Zo:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method
