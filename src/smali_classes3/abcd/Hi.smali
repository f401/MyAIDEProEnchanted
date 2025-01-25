.class Labcd/Hi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Ji;->j6(ZLjava/lang/String;F)V
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
.field final FH:Labcd/Ji;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x3cc87a6d76bb9749L  # 6.7940744100194515E-16

    const-wide v2, -0x237b6d9c8f5586fL  # -7.94139976842664E297

    const-class v4, Labcd/Hi;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Ji;)V
    .registers 2

    iput-object p1, p0, Labcd/Hi;->FH:Labcd/Ji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1333ba2977a70becL
    .end annotation

    const-wide v0, -0xa01199ad7d13880L

    :try_start_5
    sget-boolean v2, Labcd/Hi;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Hi;->FH:Labcd/Ji;

    invoke-static {v2}, Labcd/Ji;->FH(Labcd/Ji;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Ji$c;

    invoke-interface {v3}, Labcd/Ji$c;->j6()V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_27

    goto :goto_16

    :cond_26
    return-void

    :catchall_27
    move-exception v2

    sget-boolean v3, Labcd/Hi;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    goto :goto_31

    :goto_30
    throw v2

    :goto_31
    goto :goto_30
.end method
