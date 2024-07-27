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
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x15e74532c6b3382dL
    .end annotation

    const-wide v8, -0x54b10939cb3a54fL

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Lcom/aide/ui/build/f;

    const-wide v2, 0x8e42631a31dc7b0L

    const-wide v4, 0x8e42631a31dc7b0L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/ui/build/f;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x54b10939cb3a54fL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/build/android/B;

    invoke-direct {v0}, Lcom/aide/ui/build/android/B;-><init>()V

    sput-object v0, Lcom/aide/ui/build/f;->j6:Lcom/aide/ui/build/android/B;

    new-instance v0, Lcom/aide/ui/build/java/h;

    invoke-direct {v0}, Lcom/aide/ui/build/java/h;-><init>()V

    sput-object v0, Lcom/aide/ui/build/f;->DW:Lcom/aide/ui/build/java/h;

    new-instance v0, Lcom/aide/ui/build/nativeexecutable/k;

    invoke-direct {v0}, Lcom/aide/ui/build/nativeexecutable/k;-><init>()V

    sput-object v0, Lcom/aide/ui/build/f;->FH:Lcom/aide/ui/build/nativeexecutable/k;

    new-instance v0, Labcd/Le;

    invoke-direct {v0}, Labcd/Le;-><init>()V

    sput-object v0, Lcom/aide/ui/build/f;->Hw:Labcd/Le;

    new-instance v0, Lcom/aide/ui/build/javascript/a;

    invoke-direct {v0}, Lcom/aide/ui/build/javascript/a;-><init>()V

    sput-object v0, Lcom/aide/ui/build/f;->v5:Lcom/aide/ui/build/javascript/a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/aide/ui/build/e;

    const/4 v1, 0x0

    sget-object v2, Lcom/aide/ui/build/f;->j6:Lcom/aide/ui/build/android/B;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/aide/ui/build/f;->DW:Lcom/aide/ui/build/java/h;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/aide/ui/build/f;->FH:Lcom/aide/ui/build/nativeexecutable/k;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/aide/ui/build/f;->Hw:Labcd/Le;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/aide/ui/build/f;->v5:Lcom/aide/ui/build/javascript/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aide/ui/build/f;->Zo:[Lcom/aide/ui/build/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/f;->gn:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0xcbd4d97337df091L    # -1.634091354340687E247

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/f;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xcbd4d97337df091L    # -1.634091354340687E247

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/f;->gn:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
