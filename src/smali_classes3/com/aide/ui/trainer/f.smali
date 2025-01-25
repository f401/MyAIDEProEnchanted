.class Lcom/aide/ui/trainer/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/trainer/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/aide/ui/trainer/g$a;",
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
.field final FH:Lcom/aide/ui/trainer/g;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xdc8eb718be40ad0L

    const-wide v2, -0x13757dc2344d2667L  # -7.139310393838075E214

    const-class v4, Lcom/aide/ui/trainer/f;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/trainer/g;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/trainer/f;->FH:Lcom/aide/ui/trainer/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/aide/ui/trainer/g$a;

    check-cast p2, Lcom/aide/ui/trainer/g$a;

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/trainer/f;->j6(Lcom/aide/ui/trainer/g$a;Lcom/aide/ui/trainer/g$a;)I

    move-result p1

    return p1
.end method

.method public j6(Lcom/aide/ui/trainer/g$a;Lcom/aide/ui/trainer/g$a;)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x4f9f625a874cfc0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/f;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xc58790992244f7cL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$c;->u7()I

    move-result v0

    invoke-virtual {p2}, Lcom/aide/ui/trainer/g$c;->u7()I

    move-result p1
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_16

    sub-int/2addr v0, p1

    return v0

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/f;->DW:Z

    if-eqz v1, :cond_27

    const-wide v2, 0xc58790992244f7cL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method
