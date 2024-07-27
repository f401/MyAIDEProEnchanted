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
        "Ljava/lang/Enum",
        "<",
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

    const-wide v8, -0x18397851a371561fL    # -8.030609899680833E191

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/yk$e;

    const-wide v2, 0x224537345b37da83L

    const-wide v4, 0x224537345b37da83L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/yk$e;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x18397851a371561fL    # -8.030609899680833E191

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/yk$e;

    const-string v1, "OK_PURCHASED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/yk$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/yk$e;->j6:Labcd/yk$e;

    new-instance v0, Labcd/yk$e;

    const-string v1, "OK_ALREADY_OWNED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Labcd/yk$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/yk$e;->DW:Labcd/yk$e;

    new-instance v0, Labcd/yk$e;

    const-string v1, "ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Labcd/yk$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/yk$e;->FH:Labcd/yk$e;

    const/4 v0, 0x3

    new-array v0, v0, [Labcd/yk$e;

    const/4 v1, 0x0

    sget-object v2, Labcd/yk$e;->j6:Labcd/yk$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Labcd/yk$e;->DW:Labcd/yk$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Labcd/yk$e;->FH:Labcd/yk$e;

    aput-object v2, v0, v1

    sput-object v0, Labcd/yk$e;->Hw:[Labcd/yk$e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yk$e;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0xf5282cae6dad43L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-wide v2, 0x540d99be0fb4f5b4L    # 7.903300579091036E96

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/yk$e;->v5:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x540d99be0fb4f5b4L    # 7.903300579091036E96

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/yk$e;->Zo:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/yk$e;
    .registers 7

    const-wide v4, 0x65a39feed3616f9L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/yk$e;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x65a39feed3616f9L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Labcd/yk$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/yk$e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yk$e;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Labcd/yk$e;
    .registers 6

    const-wide v4, -0x3a15769f88be081L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/yk$e;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3a15769f88be081L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Labcd/yk$e;->Hw:[Labcd/yk$e;

    invoke-virtual {v0}, [Labcd/yk$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/yk$e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yk$e;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
