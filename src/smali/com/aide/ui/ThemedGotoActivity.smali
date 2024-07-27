.class public Lcom/aide/ui/ThemedGotoActivity;
.super Landroid/app/Activity;


# annotations
.annotation runtime Labcd/xu;
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


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x3af2a7f6dee854f5L    # 9.644983172117585E-25

    const-class v0, Lcom/aide/ui/ThemedGotoActivity;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x2e5d3cdf3b9ad525L    # 2.3516119193427973E-85

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ThemedGotoActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2e5d3cdf3b9ad525L    # 2.3516119193427973E-85

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ThemedGotoActivity;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x5b7af6aa36489d8L
    .end annotation

    const-wide v8, -0x4eb0a348898f54bL    # -7.792019122240793E284

    const-wide v2, 0x16db5858385L

    :try_start_0
    const-string v4, "androidRelease"

    const-string v5, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v6, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v7, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/ui/ThemedGotoActivity;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4eb0a348898f54bL    # -7.792019122240793E284

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/aide/ui/aa;->lg()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0e0006

    invoke-static {p0, v0}, Lcom/b;->light(Landroid/app/Activity;I)V

    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0e0005

    invoke-static {p0, v0}, Lcom/b;->dark(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ThemedGotoActivity;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
