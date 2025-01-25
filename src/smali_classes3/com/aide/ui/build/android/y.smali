.class Lcom/aide/ui/build/android/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/build/android/O$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/B;->j6(ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Z

.field final Hw:Ljava/lang/String;

.field final Zo:Lcom/aide/ui/build/android/B;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x4246ebb8609a7393L  # -2.280941578174458E-11

    const-wide v2, 0x14c2bc48f58132e8L

    const-class v4, Lcom/aide/ui/build/android/y;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/B;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/aide/ui/build/android/y;->Zo:Lcom/aide/ui/build/android/B;

    iput-boolean p2, p0, Lcom/aide/ui/build/android/y;->FH:Z

    iput-object p3, p0, Lcom/aide/ui/build/android/y;->Hw:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/ui/build/android/y;->v5:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x52e2d6bc53d06f39L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/y;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x148e79299f80bccfL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v1, p0, Lcom/aide/ui/build/android/y;->Zo:Lcom/aide/ui/build/android/B;

    iget-boolean v2, p0, Lcom/aide/ui/build/android/y;->FH:Z

    iget-object v3, p0, Lcom/aide/ui/build/android/y;->Hw:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/ui/build/android/y;->v5:Ljava/lang/String;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/y;->DW:Z

    if-eqz v1, :cond_34

    const-wide v2, 0x148e79299f80bccfL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method
