.class Lcom/aide/ui/Ja;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/La;-><init>(Lcom/aide/ui/MainActivity;)V
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
.field final FH:Lcom/aide/ui/La;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1bb23df1ef9f4583L  # -1.4720129579006365E175

    const-wide v2, -0x2e1978aa8dc29f27L  # -3.50125622332183E86

    const-class v4, Lcom/aide/ui/Ja;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/La;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/Ja;->FH:Lcom/aide/ui/La;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1911ea4053adfafL
    .end annotation

    const-wide v0, 0x59a4d26b9079905L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Ja;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/Ja;->FH:Lcom/aide/ui/La;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/ui/La;->j6(Lcom/aide/ui/La;Z)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Ja;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method
