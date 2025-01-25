.class public final Lu/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/n;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Ln/a;->n:Lc/n;

    const-string v2, "MD2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Ln/a;->o:Lc/n;

    const-string v2, "MD4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Ln/a;->p:Lc/n;

    const-string v2, "MD5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Lm/a;->a:Lc/n;

    const-string v2, "SHA-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Lk/a;->d:Lc/n;

    const-string v2, "SHA-224"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Lk/a;->a:Lc/n;

    const-string v2, "SHA-256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Lk/a;->b:Lc/n;

    const-string v2, "SHA-384"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Lk/a;->c:Lc/n;

    const-string v2, "SHA-512"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Lo/a;->b:Lc/n;

    const-string v2, "RIPEMD-128"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Lo/a;->a:Lc/n;

    const-string v3, "RIPEMD-160"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Lo/a;->c:Lc/n;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Li/a;->b:Lc/n;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Li/a;->a:Lc/n;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Lf/a;->a:Lc/n;

    const-string v2, "GOST3411"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Lh/a;->a:Lc/n;

    const-string v2, "Tiger"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Li/a;->c:Lc/n;

    const-string v2, "Whirlpool"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Lk/a;->e:Lc/n;

    const-string v2, "SHA3-224"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Lk/a;->f:Lc/n;

    const-string v2, "SHA3-256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Lk/a;->g:Lc/n;

    const-string v2, "SHA3-384"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    sget-object v1, Lk/a;->h:Lc/n;

    const-string v2, "SHA3-512"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
