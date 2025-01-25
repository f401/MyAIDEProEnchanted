.class public interface abstract Li/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc/n;

.field public static final b:Lc/n;

.field public static final c:Lc/n;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lc/n;

    const-string v1, "1.0.10118"

    invoke-direct {v0, v1}, Lc/n;-><init>(Ljava/lang/String;)V

    .line 1
    new-instance v1, Lc/n;

    const-string v2, "3.0"

    invoke-direct {v1, v0, v2}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v0, Lc/n;

    const-string v2, "49"

    invoke-direct {v0, v1, v2}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    .line 2
    sput-object v0, Li/a;->a:Lc/n;

    .line 3
    new-instance v0, Lc/n;

    const-string v2, "50"

    invoke-direct {v0, v1, v2}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    .line 4
    sput-object v0, Li/a;->b:Lc/n;

    .line 5
    new-instance v0, Lc/n;

    const-string v2, "55"

    invoke-direct {v0, v1, v2}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    .line 6
    sput-object v0, Li/a;->c:Lc/n;

    new-instance v0, Lc/n;

    const-string v1, "1.0.18033.2"

    invoke-direct {v0, v1}, Lc/n;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v1, Lc/n;

    const-string v2, "1.2"

    invoke-direct {v1, v0, v2}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v1, Lc/n;

    const-string v2, "2.4"

    invoke-direct {v1, v0, v2}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    return-void
.end method
