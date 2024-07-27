.class Labcd/em$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/em;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private FH:Labcd/em$a;
    .annotation runtime Labcd/ru;
        field = -0x9211dfb4dd5f1edL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lem$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x479dba420b8d157L    # -1.053618186436264E287

    const-class v0, Labcd/em$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x10ab96ed429c5630L
    .end annotation

    const-wide v4, 0x1f3579586e51ab5dL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/em$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1f3579586e51ab5dL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/em$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/dm;)V
    .registers 8

    const-wide v4, -0x6212546f585d400L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/em$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6212546f585d400L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/em$b;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/em$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6(Labcd/em$b;)Labcd/em$a;
    .registers 2

    iget-object v0, p0, Labcd/em$b;->FH:Labcd/em$a;

    return-object v0
.end method

.method static synthetic j6(Labcd/em$b;Labcd/em$a;)Labcd/em$a;
    .registers 2

    iput-object p1, p0, Labcd/em$b;->FH:Labcd/em$a;

    return-object p1
.end method
