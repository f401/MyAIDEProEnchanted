.class public final enum Labcd/md;
.super Ljava/lang/Enum;

# interfaces
.implements Labcd/ha;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/md;",
        ">;",
        "Labcd/ha;"
    }
.end annotation


# static fields
.field private static final DW:[Labcd/md;

.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static final enum j6:Labcd/md;


# instance fields
.field private final VH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x30b223a0b2d5000L
    .end annotation
.end field

.field private final Zo:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x1ff793d396894d58L
    .end annotation
.end field

.field private final gn:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x30b291a9632794bL
    .end annotation
.end field

.field private final v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x382f1179cfb3d623L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x108d751009c1f5dfL
    .end annotation

    const-wide v8, 0x28838171d2c82000L

    const/4 v7, 0x0

    :try_start_0
    const-class v0, Labcd/md;

    const-wide v2, -0x54648716251108edL    # -1.25602053921038E-98

    const-wide v4, -0x54648716251108edL    # -1.25602053921038E-98

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/md;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x28838171d2c82000L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/md;

    const-string v1, "AUTO_INSERT_JAVADOC_ASTERISK_ONTYPE"

    const/4 v2, 0x0

    const-string v3, "General"

    const-string v4, "Automatically insert * in JavaDoc comments"

    const-string v5, ""

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Labcd/md;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Labcd/md;->j6:Labcd/md;

    const/4 v0, 0x1

    new-array v0, v0, [Labcd/md;

    const/4 v1, 0x0

    sget-object v2, Labcd/md;->j6:Labcd/md;

    aput-object v2, v0, v1

    sput-object v0, Labcd/md;->DW:[Labcd/md;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/md;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0xad09e267a7c8281L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Labcd/md;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x48ce950a530584L

    const/4 v2, 0x0

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    aput-object p6, v3, v4

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Labcd/md;->v5:Ljava/lang/String;

    iput-object p4, p0, Labcd/md;->Zo:Ljava/lang/String;

    iput-object p5, p0, Labcd/md;->VH:Ljava/lang/String;

    iput-object p6, p0, Labcd/md;->gn:Ljava/lang/String;

    return-void
.end method

.method public static Hw()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Labcd/md;",
            ">;"
        }
    .end annotation

    const-wide v4, 0x2f74cbdce027c7abL    # 4.3847824539900745E-80

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/md;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2f74cbdce027c7abL    # 4.3847824539900745E-80

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Labcd/md;->j6:Labcd/md;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/md;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/md;
    .registers 7

    const-wide v4, 0x893892558224930L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/md;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x893892558224930L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Labcd/md;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/md;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/md;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Labcd/md;
    .registers 6

    const-wide v4, 0x17e2cdeded3b4920L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/md;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x17e2cdeded3b4920L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Labcd/md;->DW:[Labcd/md;

    invoke-virtual {v0}, [Labcd/md;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/md;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/md;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x1b4627e4acbfa62dL

    :try_start_0
    sget-boolean v0, Labcd/md;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1b4627e4acbfa62dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/md;->Zo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/md;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
