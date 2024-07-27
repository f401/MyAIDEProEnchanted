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
        "Ljava/lang/Enum",
        "<",
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
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x25321ec8bc77d668L
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/cm$a;

    const-wide v2, -0x17e028fe2b980fa4L    # -3.631688094082932E193

    const-wide v4, -0x17e028fe2b980fa4L    # -3.631688094082932E193

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/cm$a;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xbe71f5a12c5c2e5L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/cm$a;

    const-string v1, "PURCHASED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/cm$a;->j6:Labcd/cm$a;

    new-instance v0, Labcd/cm$a;

    const-string v1, "CANCELED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Labcd/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/cm$a;->DW:Labcd/cm$a;

    new-instance v0, Labcd/cm$a;

    const-string v1, "REFUNDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Labcd/cm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/cm$a;->FH:Labcd/cm$a;

    const/4 v0, 0x3

    new-array v0, v0, [Labcd/cm$a;

    const/4 v1, 0x0

    sget-object v2, Labcd/cm$a;->j6:Labcd/cm$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Labcd/cm$a;->DW:Labcd/cm$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Labcd/cm$a;->FH:Labcd/cm$a;

    aput-object v2, v0, v1

    sput-object v0, Labcd/cm$a;->Hw:[Labcd/cm$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/cm$a;->Zo:Z

    if-eqz v1, :cond_1

    const-wide v2, -0xbe71f5a12c5c2e5L

    invoke-static {v0, v2, v3, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x57dd2ead75004cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-wide v2, 0x1d0e65e55f883350L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/cm$a;->v5:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x1d0e65e55f883350L

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/cm$a;->Zo:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static j6(I)Labcd/cm$a;
    .registers 7

    const-wide v4, 0x4135f31d4959008L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/cm$a;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4135f31d4959008L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-static {}, Labcd/cm$a;->values()[Labcd/cm$a;

    move-result-object v0

    if-ltz p0, :cond_1

    array-length v1, v0

    if-lt p0, v1, :cond_2

    :cond_1
    sget-object v0, Labcd/cm$a;->DW:Labcd/cm$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_2
    aget-object v0, v0, p0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/cm$a;->Zo:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/cm$a;
    .registers 7

    const-wide v4, 0x9f4faa41a305d87L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/cm$a;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9f4faa41a305d87L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Labcd/cm$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/cm$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/cm$a;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Labcd/cm$a;
    .registers 6

    const-wide v4, 0x2a3a7641fa7735f5L    # 2.88445173519136E-105

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/cm$a;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2a3a7641fa7735f5L    # 2.88445173519136E-105

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Labcd/cm$a;->Hw:[Labcd/cm$a;

    invoke-virtual {v0}, [Labcd/cm$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/cm$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/cm$a;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
