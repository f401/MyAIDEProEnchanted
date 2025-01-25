.class Lcom/aide/ui/build/android/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/h;->j6(Z)V
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

.field final Hw:Lcom/aide/ui/build/android/h;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x4246ebb8609a7393L  # -2.280941578174458E-11

    const-wide v2, -0x3a0ee4db010a9698L  # -8.47049739590819E28

    const-class v4, Lcom/aide/ui/build/android/d;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/h;Z)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iput-boolean p2, p0, Lcom/aide/ui/build/android/d;->FH:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xbac87a3061dc5a5L
    .end annotation

    const-wide v0, 0x2a185a930b1e1bb8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v2, v2, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    iget-object v3, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v3, v3, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    invoke-static {v3}, Lcom/aide/ui/build/android/B;->J8(Lcom/aide/ui/build/android/B;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aide/ui/build/android/B;->DW(Lcom/aide/ui/build/android/B;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v2, v2, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    invoke-static {v2}, Lcom/aide/ui/build/android/B;->EQ(Lcom/aide/ui/build/android/B;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_39

    iget-boolean v2, p0, Lcom/aide/ui/build/android/d;->FH:Z

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v2, v2, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    invoke-static {v2, v3}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Z)Z

    :cond_31
    iget-object v2, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v2, v2, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    invoke-static {v2}, Lcom/aide/ui/build/android/B;->Ws(Lcom/aide/ui/build/android/B;)V

    goto :goto_79

    :cond_39
    iget-object v2, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v2, v2, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v3}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v2, v2, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Z)Z

    iget-object v2, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v2, v2, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    invoke-static {v2}, Lcom/aide/ui/build/android/B;->QX(Lcom/aide/ui/build/android/B;)Z

    move-result v2

    if-eqz v2, :cond_72

    new-instance v2, Lcom/aide/ui/build/android/c;

    invoke-direct {v2, p0}, Lcom/aide/ui/build/android/c;-><init>(Lcom/aide/ui/build/android/d;)V

    iget-object v3, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v3, v3, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    invoke-static {v3}, Lcom/aide/ui/build/android/B;->FH(Lcom/aide/ui/build/android/B;)Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Warning"

    const-string v5, "Your app supports only ARM. It may work with reduced performance on Intel Architecture based devices."

    invoke-static {v3, v4, v5, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_79

    :cond_6e
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_79

    :cond_72
    iget-object v2, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v2, v2, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    invoke-static {v2}, Lcom/aide/ui/build/android/B;->Hw(Lcom/aide/ui/build/android/B;)V
    :try_end_79
    .catchall {:try_start_5 .. :try_end_79} :catchall_7a

    :goto_79
    return-void

    :catchall_7a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/d;->DW:Z

    if-eqz v3, :cond_82

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_82
    throw v2
.end method
