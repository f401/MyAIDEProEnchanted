.class public interface abstract Ld/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc/n;

.field public static final b:Lc/n;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lc/n;

    const-string v1, "1.3.6.1.4.1.22554"

    invoke-direct {v0, v1}, Lc/n;-><init>(Ljava/lang/String;)V

    .line 1
    new-instance v1, Lc/n;

    const-string v2, "1"

    invoke-direct {v1, v0, v2}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v3, Lc/n;

    invoke-direct {v3, v1, v2}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v4, Lc/n;

    const-string v5, "2.1"

    invoke-direct {v4, v1, v5}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v5, Lc/n;

    const-string v6, "2.2"

    invoke-direct {v5, v1, v6}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v5, Lc/n;

    const-string v6, "2.3"

    invoke-direct {v5, v1, v6}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v5, Lc/n;

    const-string v6, "2.4"

    invoke-direct {v5, v1, v6}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v1, Lc/n;

    invoke-direct {v1, v3, v2}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v1, Lc/n;

    const-string v5, "2"

    invoke-direct {v1, v3, v5}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v3, Lc/n;

    invoke-direct {v3, v4, v2}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v3, Lc/n;

    invoke-direct {v3, v4, v5}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v4, Lc/n;

    const-string v6, "1.2"

    invoke-direct {v4, v1, v6}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v4, Lc/n;

    const-string v7, "1.22"

    invoke-direct {v4, v1, v7}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v4, Lc/n;

    const-string v8, "1.42"

    invoke-direct {v4, v1, v8}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v1, Lc/n;

    invoke-direct {v1, v3, v6}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v1, Lc/n;

    invoke-direct {v1, v3, v7}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v1, Lc/n;

    invoke-direct {v1, v3, v8}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v1, Lc/n;

    new-instance v3, Lc/n;

    invoke-direct {v3, v0, v5}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    invoke-direct {v1, v3, v2}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v3, Lc/n;

    invoke-direct {v3, v1, v2}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v3, Lc/n;

    invoke-direct {v3, v1, v5}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    .line 2
    sput-object v3, Ld/a;->a:Lc/n;

    .line 3
    new-instance v3, Lc/n;

    const-string v4, "3"

    invoke-direct {v3, v1, v4}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    .line 4
    sput-object v3, Ld/a;->b:Lc/n;

    .line 5
    new-instance v1, Lc/n;

    new-instance v3, Lc/n;

    invoke-direct {v3, v0, v4}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    invoke-direct {v1, v3, v2}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    return-void
.end method
