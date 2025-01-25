.class Lcom/aide/ui/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/j$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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

.field final Hw:Lcom/aide/ui/j$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x15c4862b0055ca58L  # -5.384050362938623E203

    const-wide v2, 0x236bc7decbafd419L

    const-class v4, Lcom/aide/ui/i;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/j$a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/i;->Hw:Lcom/aide/ui/j$a;

    iput-object p2, p0, Lcom/aide/ui/i;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1f1fdfd1f905c58L
    .end annotation

    const-wide v0, -0x34969540716e0110L  # -1.947570841423039E55

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/i;->FH:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/activities/o;->we()Lcom/aide/ui/activities/o;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/aide/common/b;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/i;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method
