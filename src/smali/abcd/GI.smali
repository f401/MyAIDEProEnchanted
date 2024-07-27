.class public interface abstract Labcd/GI;
.super Ljava/lang/Object;


# static fields
.field public static final j6:Labcd/GI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/FI;

    invoke-direct {v0}, Labcd/FI;-><init>()V

    sput-object v0, Labcd/GI;->j6:Labcd/GI;

    return-void
.end method


# virtual methods
.method public abstract j6(Labcd/SI;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/SI;",
            "Ljava/util/Collection",
            "<",
            "Labcd/OI;",
            ">;)V"
        }
    .end annotation
.end method
