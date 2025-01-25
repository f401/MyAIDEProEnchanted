.class public final Lc/as;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc/bc;

.field public static final b:Lc/bd;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lc/bc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/bc;-><init>(I)V

    sput-object v0, Lc/as;->a:Lc/bc;

    new-instance v0, Lc/bd;

    invoke-direct {v0, v1}, Lc/bd;-><init>(I)V

    sput-object v0, Lc/as;->b:Lc/bd;

    return-void
.end method
