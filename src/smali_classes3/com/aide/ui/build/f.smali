.class public Lcom/aide/ui/build/f;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field public static DW:Lcom/aide/ui/build/java/h;

.field public static FH:Lcom/aide/ui/build/nativeexecutable/k;

.field public static Hw:Labcd/Le;

.field private static VH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field public static Zo:[Lcom/aide/ui/build/e;

.field private static gn:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static j6:Lcom/aide/ui/build/android/B;

.field public static v5:Lcom/aide/ui/build/javascript/a;


# direct methods
.method static constructor <clinit>()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x15e74532c6b3382dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x54b10939cb3a54fL

    :try_start_6
    const-class v3, Lcom/aide/ui/build/f;

    const-wide v4, 0x8e42631a31dc7b0L

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/ui/build/f;->VH:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Lcom/aide/ui/build/android/B;

    invoke-direct {v3}, Lcom/aide/ui/build/android/B;-><init>()V

    sput-object v3, Lcom/aide/ui/build/f;->j6:Lcom/aide/ui/build/android/B;

    new-instance v3, Lcom/aide/ui/build/java/h;

    invoke-direct {v3}, Lcom/aide/ui/build/java/h;-><init>()V

    sput-object v3, Lcom/aide/ui/build/f;->DW:Lcom/aide/ui/build/java/h;

    new-instance v3, Lcom/aide/ui/build/nativeexecutable/k;

    invoke-direct {v3}, Lcom/aide/ui/build/nativeexecutable/k;-><init>()V

    sput-object v3, Lcom/aide/ui/build/f;->FH:Lcom/aide/ui/build/nativeexecutable/k;

    new-instance v3, Labcd/Le;

    invoke-direct {v3}, Labcd/Le;-><init>()V

    sput-object v3, Lcom/aide/ui/build/f;->Hw:Labcd/Le;

    new-instance v3, Lcom/aide/ui/build/javascript/a;

    invoke-direct {v3}, Lcom/aide/ui/build/javascript/a;-><init>()V

    sput-object v3, Lcom/aide/ui/build/f;->v5:Lcom/aide/ui/build/javascript/a;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/aide/ui/build/e;

    sget-object v5, Lcom/aide/ui/build/f;->j6:Lcom/aide/ui/build/android/B;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/aide/ui/build/f;->DW:Lcom/aide/ui/build/java/h;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Lcom/aide/ui/build/f;->FH:Lcom/aide/ui/build/nativeexecutable/k;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    sget-object v5, Lcom/aide/ui/build/f;->Hw:Labcd/Le;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const/4 v5, 0x4

    aput-object v3, v4, v5

    sput-object v4, Lcom/aide/ui/build/f;->Zo:[Lcom/aide/ui/build/e;
    :try_end_56
    .catchall {:try_start_6 .. :try_end_56} :catchall_57

    return-void

    :catchall_57
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/f;->gn:Z

    if-eqz v4, :cond_5f

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5f
    throw v3
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0xcbd4d97337df091L  # -1.634091354340687E247

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/f;->VH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/f;->gn:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method
