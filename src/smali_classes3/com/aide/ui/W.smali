.class Lcom/aide/ui/W;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/X;->run()V
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
.field final FH:Lcom/aide/ui/X;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x818ea629444fba9L

    const-wide v2, 0x3622ee68f8a560bfL  # 6.476656868169201E-48

    const-class v4, Lcom/aide/ui/W;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/X;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/W;->FH:Lcom/aide/ui/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x46e765709b4b976cL
    .end annotation

    const-wide v0, 0x3000b8b257b3b628L  # 1.80511805707522E-77

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/W;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/W;->FH:Lcom/aide/ui/X;

    iget-object v2, v2, Lcom/aide/ui/X;->Hw:Lcom/aide/ui/Z;

    invoke-static {v2, p1}, Lcom/aide/ui/Z;->j6(Lcom/aide/ui/Z;Landroid/view/MenuItem;)Z
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_15

    const/4 p1, 0x1

    return p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/W;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method
