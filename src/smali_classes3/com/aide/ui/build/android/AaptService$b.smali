.class Lcom/aide/ui/build/android/AaptService$b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/build/android/AaptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
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
.field public FH:Z
    .annotation runtime Labcd/ru;
        field = -0x43349c29d3d609f0L
    .end annotation
.end field

.field public Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x3eec2eb39b394bb9L
    .end annotation
.end field

.field public v5:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = -0x1c84ec7b95405d3bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/android/AaptService$b;

    const-wide v1, -0x250674de433e161dL  # -1.7705910674005002E130

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x38eb32d879f42c1L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x48a00908b7e5f4L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/AaptService$b;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/build/android/AaptService$b;->Hw:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/AaptService$b;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method public constructor <init>(Z)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x305033442872b80L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x17715625497e7f39L  # 9.276932843978988E-196

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/AaptService$b;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/aide/ui/build/android/AaptService$b;->FH:Z
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/AaptService$b;->DW:Z

    if-eqz v4, :cond_20

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v3
.end method
