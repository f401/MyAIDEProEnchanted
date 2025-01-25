.class public final enum Labcd/md;
.super Ljava/lang/Enum;

# interfaces
.implements Labcd/ha;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x108d751009c1f5dfL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x28838171d2c82000L

    :try_start_6
    const-class v3, Labcd/md;

    const-wide v4, -0x54648716251108edL  # -1.25602053921038E-98

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/md;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Labcd/md;

    const-string v5, "AUTO_INSERT_JAVADOC_ASTERISK_ONTYPE"

    const/4 v6, 0x0

    const-string v7, "General"

    const-string v8, "Automatically insert * in JavaDoc comments"

    const-string v9, ""

    const-string v10, ""

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Labcd/md;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Labcd/md;->j6:Labcd/md;

    const/4 v4, 0x1

    new-array v4, v4, [Labcd/md;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    sput-object v4, Labcd/md;->DW:[Labcd/md;
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception v3

    sget-boolean v4, Labcd/md;->Hw:Z

    if-eqz v4, :cond_3b

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3b
    throw v3
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
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

    if-eqz v0, :cond_27

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const-wide v1, -0x48ce950a530584L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Labcd/md;->v5:Ljava/lang/String;

    iput-object p4, p0, Labcd/md;->Zo:Ljava/lang/String;

    iput-object p5, p0, Labcd/md;->VH:Ljava/lang/String;

    iput-object p6, p0, Labcd/md;->gn:Ljava/lang/String;

    return-void
.end method

.method public static Hw()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Labcd/md;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x2f74cbdce027c7abL  # 4.3847824539900745E-80

    :try_start_6
    sget-boolean v3, Labcd/md;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sget-object v4, Labcd/md;->j6:Labcd/md;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-object v3

    :catchall_18
    move-exception v3

    sget-boolean v4, Labcd/md;->Hw:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/md;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x893892558224930L

    :try_start_6
    sget-boolean v3, Labcd/md;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-class v3, Labcd/md;

    invoke-static {v3, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Labcd/md;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/md;->Hw:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static values()[Labcd/md;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, 0x17e2cdeded3b4920L

    :try_start_6
    sget-boolean v3, Labcd/md;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Labcd/md;->DW:[Labcd/md;

    invoke-virtual {v3}, [Labcd/md;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Labcd/md;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/md;->Hw:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x1b4627e4acbfa62dL

    :try_start_5
    sget-boolean v2, Labcd/md;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/md;->Zo:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/md;->Hw:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
