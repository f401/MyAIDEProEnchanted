.class Lcom/aide/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/d;->j6(Ljava/lang/String;JIIILcom/aide/engine/SourceEntity;Ljava/lang/String;)V
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
.field final FH:I

.field final Hw:I

.field final Zo:Lcom/aide/ui/d;

.field final v5:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x18aea3fc0f53a649L  # 8.596259399597165E-190

    const-wide v2, -0x27d11fdd8dec917L

    const-class v4, Lcom/aide/ui/c;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/d;IILjava/util/List;)V
    .registers 5

    iput-object p1, p0, Lcom/aide/ui/c;->Zo:Lcom/aide/ui/d;

    iput p2, p0, Lcom/aide/ui/c;->FH:I

    iput p3, p0, Lcom/aide/ui/c;->Hw:I

    iput-object p4, p0, Lcom/aide/ui/c;->v5:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xe1006b894fa1e20L
    .end annotation

    const-wide v0, 0xad2ea34308106a1L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->Hw()V

    iget-object v2, p0, Lcom/aide/ui/c;->Zo:Lcom/aide/ui/d;

    iget-object v2, v2, Lcom/aide/ui/d;->Zo:Lcom/aide/ui/j;

    iget v3, p0, Lcom/aide/ui/c;->FH:I

    iget v4, p0, Lcom/aide/ui/c;->Hw:I

    iget-object v5, p0, Lcom/aide/ui/c;->v5:Ljava/util/List;

    invoke-static {v2, v3, v4, v5}, Lcom/aide/ui/j;->j6(Lcom/aide/ui/j;IILjava/util/List;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/c;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method
