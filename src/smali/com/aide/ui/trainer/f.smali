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
        "Ljava/util/Comparator",
        "<",
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
    .registers 6

    const-class v0, Lcom/aide/ui/trainer/f;

    const-wide v2, -0xdc8eb718be40ad0L

    const-wide v4, -0x13757dc2344d2667L    # -7.139310393838075E214

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 4

    check-cast p1, Lcom/aide/ui/trainer/g$a;

    check-cast p2, Lcom/aide/ui/trainer/g$a;

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/trainer/f;->j6(Lcom/aide/ui/trainer/g$a;Lcom/aide/ui/trainer/g$a;)I

    move-result v0

    return v0
.end method

.method public j6(Lcom/aide/ui/trainer/g$a;Lcom/aide/ui/trainer/g$a;)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x4f9f625a874cfc0L
    .end annotation

    const-wide v2, 0xc58790992244f7cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/f;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xc58790992244f7cL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$c;->u7()I

    move-result v0

    invoke-virtual {p2}, Lcom/aide/ui/trainer/g$c;->u7()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/trainer/f;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
