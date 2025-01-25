.class Lcom/aide/ui/activities/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/GotoBrowserActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final FH:Lcom/aide/ui/activities/GotoBrowserActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x94440bad118f03dL  # -8.737246563262376E263

    const-wide v2, 0x2b16f55135a053b4L  # 4.100158375363062E-101

    const-class v4, Lcom/aide/ui/activities/u;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/GotoBrowserActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/u;->FH:Lcom/aide/ui/activities/GotoBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x5761ae1662b6480L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/u;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x3020f2ca91c79200L  # 7.318463452971474E-77

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/activities/u;->FH:Lcom/aide/ui/activities/GotoBrowserActivity;

    invoke-static {v0}, Lcom/aide/ui/activities/GotoBrowserActivity;->DW(Lcom/aide/ui/activities/GotoBrowserActivity;)V

    iget-object v0, p0, Lcom/aide/ui/activities/u;->FH:Lcom/aide/ui/activities/GotoBrowserActivity;

    invoke-static {v0}, Lcom/aide/ui/activities/GotoBrowserActivity;->j6(Lcom/aide/ui/activities/GotoBrowserActivity;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/u;->DW:Z

    if-eqz v1, :cond_31

    const-wide v2, 0x3020f2ca91c79200L  # 7.318463452971474E-77

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method
