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
    .registers 5

    const-wide v0, -0x66df21c1892d81d8L

    const-wide v2, 0xca60add9b58409dL

    const-class v4, Labcd/dj;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xbdfeb30ea1b26b1L
    .end annotation

    const-wide v0, 0x173df13e31c2ff78L

    :try_start_5
    sget-boolean v2, Labcd/dj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->gW()Labcd/Sk;

    move-result-object v3

    iget-object v2, p0, Labcd/dj;->v5:Labcd/ej;

    iget-object v4, v2, Labcd/ej;->FH:Ljava/lang/String;

    const-string v5, ""

    iget-object v6, p0, Labcd/dj;->FH:Ljava/lang/String;

    iget-object v7, p0, Labcd/dj;->Hw:Ljava/lang/String;

    iget-object v2, p0, Labcd/dj;->v5:Labcd/ej;

    iget-object v8, v2, Labcd/ej;->Hw:Labcd/Sk$a;

    invoke-virtual/range {v3 .. v8}, Labcd/Sk;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Labcd/Sk$a;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Labcd/cj;

    invoke-direct {v3, p0, v2}, Labcd/cj;-><init>(Labcd/dj;Ljava/util/List;)V

    invoke-static {v3}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Labcd/dj;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method
