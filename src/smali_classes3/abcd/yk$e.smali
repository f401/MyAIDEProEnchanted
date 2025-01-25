.class public final enum Labcd/yk$e;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/yk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Labcd/yk$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/yk$e;

.field public static final enum FH:Labcd/yk$e;

.field private static final Hw:[Labcd/yk$e;

.field private static Zo:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static final enum j6:Labcd/yk$e;

.field private static v5:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x311002061152e93dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x18397851a371561fL  # -8.030609899680833E191

    :try_start_6
    const-class v3, Labcd/yk$e;

    const-wide v4, 0x224537345b37da83L

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/yk$e;->v5:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Labcd/yk$e;

    const-string v4, "OK_PURCHASED"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Labcd/yk$e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/yk$e;->j6:Labcd/yk$e;

    new-instance v4, Labcd/yk$e;

    const-string v6, "OK_ALREADY_OWNED"

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Labcd/yk$e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Labcd/yk$e;->DW:Labcd/yk$e;

    new-instance v6, Labcd/yk$e;

    const-string v8, "ERROR"

    const/4 v9, 0x2

    invoke-direct {v6, v8, v9}, Labcd/yk$e;-><init>(Ljava/lang/String;I)V

    sput-object v6, Labcd/yk$e;->FH:Labcd/yk$e;

    const/4 v8, 0x3

    new-array v8, v8, [Labcd/yk$e;

    aput-object v3, v8, v5

    aput-object v4, v8, v7

    aput-object v6, v8, v9

    sput-object v8, Labcd/yk$e;->Hw:[Labcd/yk$e;
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_41

    return-void

    :catchall_41
    move-exception v3

    sget-boolean v4, Labcd/yk$e;->Zo:Z

    if-eqz v4, :cond_49

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_49
    throw v3
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xf5282cae6dad43L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/yk$e;->v5:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x540d99be0fb4f5b4L  # 7.903300579091036E96

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    sget-boolean v1, Labcd/yk$e;->Zo:Z

    if-eqz v1, :cond_2b

    const-wide v2, 0x540d99be0fb4f5b4L  # 7.903300579091036E96

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/yk$e;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x65a39feed3616f9L

    :try_start_6
    sget-boolean v3, Labcd/yk$e;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-class v3, Labcd/yk$e;

    invoke-static {v3, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Labcd/yk$e;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/yk$e;->Zo:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static values()[Labcd/yk$e;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x3a15769f88be081L

    :try_start_6
    sget-boolean v3, Labcd/yk$e;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Labcd/yk$e;->Hw:[Labcd/yk$e;

    invoke-virtual {v3}, [Labcd/yk$e;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Labcd/yk$e;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/yk$e;->Zo:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method
