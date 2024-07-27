.class Lcom/aide/ui/preferences/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/preferences/KeyBindingsView;->j6()V
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
        "Lcom/aide/ui/preferences/KeyBindingsView$b;",
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
.field final FH:Lcom/aide/ui/preferences/KeyBindingsView;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/preferences/h;

    const-wide v2, 0xed7acd957b04520L

    const-wide v4, 0x1d8921065bad0631L    # 2.130726313692381E-166

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/preferences/KeyBindingsView;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/preferences/h;->FH:Lcom/aide/ui/preferences/KeyBindingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/aide/ui/preferences/KeyBindingsView$b;

    check-cast p2, Lcom/aide/ui/preferences/KeyBindingsView$b;

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/preferences/h;->j6(Lcom/aide/ui/preferences/KeyBindingsView$b;Lcom/aide/ui/preferences/KeyBindingsView$b;)I

    move-result v0

    return v0
.end method

.method public j6(Lcom/aide/ui/preferences/KeyBindingsView$b;Lcom/aide/ui/preferences/KeyBindingsView$b;)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x18b7549d038f6aa0L
    .end annotation

    const-wide v2, -0x1c5dfdf04f56775L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/preferences/h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1c5dfdf04f56775L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p1, Lcom/aide/ui/preferences/KeyBindingsView$b;->v5:Ljava/lang/String;

    iget-object v1, p2, Lcom/aide/ui/preferences/KeyBindingsView$b;->v5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/preferences/h;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
