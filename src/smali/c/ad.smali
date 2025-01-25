.class public final Lc/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc/ah;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc/ah;

    invoke-direct {v0}, Lc/ah;-><init>()V

    sput-object v0, Lc/ad;->a:Lc/ah;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    return-void
.end method
