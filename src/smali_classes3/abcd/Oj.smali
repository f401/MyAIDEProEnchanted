.class Labcd/Oj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Kj$d;->done()V
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
.field final FH:Labcd/Kj$d;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x51a88981548e24d0L

    const-wide v2, 0x434b75cc39ed851L

    const-class v4, Labcd/Oj;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Kj$d;)V
    .registers 2

    iput-object p1, p0, Labcd/Oj;->FH:Labcd/Kj$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x22f41107f3ba0265L
    .end annotation

    const-wide v0, -0x2945f14105aefe9cL  # -6.119738693893772E109

    :try_start_5
    sget-boolean v2, Labcd/Oj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Oj;->FH:Labcd/Kj$d;

    iget-object v2, v2, Labcd/Kj$d;->Hw:Labcd/Kj;

    invoke-static {v2}, Labcd/Kj;->DW(Labcd/Kj;)Labcd/Kj$d;

    move-result-object v2

    iget-object v3, p0, Labcd/Oj;->FH:Labcd/Kj$d;

    if-ne v2, v3, :cond_25

    iget-object v2, v3, Labcd/Kj$d;->Hw:Labcd/Kj;

    invoke-static {v2}, Labcd/Kj;->j6(Labcd/Kj;)V

    iget-object v2, p0, Labcd/Oj;->FH:Labcd/Kj$d;

    iget-object v2, v2, Labcd/Kj$d;->Hw:Labcd/Kj;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Labcd/Kj;->j6(Labcd/Kj;Labcd/Kj$d;)Labcd/Kj$d;
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    :cond_25
    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Labcd/Oj;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method
