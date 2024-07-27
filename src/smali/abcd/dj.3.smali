.class Labcd/dj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ej;->j6(Ljava/lang/String;)V
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
.field final FH:Ljava/lang/String;

.field final Hw:Ljava/lang/String;

.field final v5:Labcd/ej;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/dj;

    const-wide v2, -0x66df21c1892d81d8L

    const-wide v4, 0xca60add9b58409dL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ej;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Labcd/dj;->v5:Labcd/ej;

    iput-object p2, p0, Labcd/dj;->FH:Ljava/lang/String;

    iput-object p3, p0, Labcd/dj;->Hw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0xbdfeb30ea1b26b1L
    .end annotation

    const-wide v6, 0x173df13e31c2ff78L

    :try_start_0
    sget-boolean v0, Labcd/dj;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x173df13e31c2ff78L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->gW()Labcd/Sk;

    move-result-object v0

    iget-object v1, p0, Labcd/dj;->v5:Labcd/ej;

    iget-object v1, v1, Labcd/ej;->FH:Ljava/lang/String;

    const-string v2, ""

    iget-object v3, p0, Labcd/dj;->FH:Ljava/lang/String;

    iget-object v4, p0, Labcd/dj;->Hw:Ljava/lang/String;

    iget-object v5, p0, Labcd/dj;->v5:Labcd/ej;

    iget-object v5, v5, Labcd/ej;->Hw:Labcd/Sk$a;

    invoke-virtual/range {v0 .. v5}, Labcd/Sk;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Labcd/Sk$a;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Labcd/cj;

    invoke-direct {v1, p0, v0}, Labcd/cj;-><init>(Labcd/dj;Ljava/util/List;)V

    invoke-static {v1}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/dj;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
