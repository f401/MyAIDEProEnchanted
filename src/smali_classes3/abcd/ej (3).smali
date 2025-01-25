.class Labcd/ej;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/gj;->nw(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Ljava/lang/String;",
        ">;"
    }
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

.field final Hw:Labcd/Sk$a;

.field final v5:Labcd/gj;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x66df21c1892d81d8L

    const-wide v2, 0x475585961db62bd8L  # 4.469907517047641E35

    const-class v4, Labcd/ej;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/gj;Ljava/lang/String;Labcd/Sk$a;)V
    .registers 4

    iput-object p1, p0, Labcd/ej;->v5:Labcd/gj;

    iput-object p2, p0, Labcd/ej;->FH:Ljava/lang/String;

    iput-object p3, p0, Labcd/ej;->Hw:Labcd/Sk$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Labcd/ej;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x3d70aeb4331e7645L
    .end annotation

    const-wide v0, -0x13aa5193f2db3743L  # -7.298993607095692E213

    :try_start_5
    sget-boolean v2, Labcd/ej;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_49

    const-string v3, "main"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_49

    :cond_23
    iget-object v3, p0, Labcd/ej;->v5:Labcd/gj;

    iget-object v4, p0, Labcd/ej;->FH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Labcd/gj;->XL(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    return-void

    :cond_34
    iget-object v3, p0, Labcd/ej;->FH:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Labcd/gj;->FH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v5

    new-instance v6, Labcd/dj;

    invoke-direct {v6, p0, v3, v2}, Labcd/dj;-><init>(Labcd/ej;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Creating Flavor ..."

    invoke-static {v5, v2, v6, v4}, Lcom/aide/ui/U;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_4a

    :cond_49
    :goto_49
    return-void

    :catchall_4a
    move-exception v2

    sget-boolean v3, Labcd/ej;->DW:Z

    if-eqz v3, :cond_52

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v2
.end method
