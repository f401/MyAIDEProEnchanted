.class public interface abstract Le/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc/n;

.field public static final b:Lc/n;

.field public static final c:Lc/n;

.field public static final d:Lc/n;

.field public static final e:Lc/n;

.field public static final f:Lc/n;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lc/n;

    const-string v1, "0.4.0.127.0.7"

    invoke-direct {v0, v1}, Lc/n;-><init>(Ljava/lang/String;)V

    .line 1
    new-instance v1, Lc/n;

    new-instance v2, Lc/n;

    const-string v3, "1.1"

    invoke-direct {v2, v0, v3}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    const-string v0, "4.1"

    invoke-direct {v1, v2, v0}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    new-instance v0, Lc/n;

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    .line 2
    sput-object v0, Le/a;->a:Lc/n;

    .line 3
    new-instance v0, Lc/n;

    const-string v2, "2"

    invoke-direct {v0, v1, v2}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    .line 4
    sput-object v0, Le/a;->b:Lc/n;

    .line 5
    new-instance v0, Lc/n;

    const-string v2, "3"

    invoke-direct {v0, v1, v2}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    .line 6
    sput-object v0, Le/a;->c:Lc/n;

    .line 7
    new-instance v0, Lc/n;

    const-string v2, "4"

    invoke-direct {v0, v1, v2}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    .line 8
    sput-object v0, Le/a;->d:Lc/n;

    .line 9
    new-instance v0, Lc/n;

    const-string v2, "5"

    invoke-direct {v0, v1, v2}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    .line 10
    sput-object v0, Le/a;->e:Lc/n;

    .line 11
    new-instance v0, Lc/n;

    const-string v2, "6"

    invoke-direct {v0, v1, v2}, Lc/n;-><init>(Lc/n;Ljava/lang/String;)V

    .line 12
    sput-object v0, Le/a;->f:Lc/n;

    return-void
.end method
