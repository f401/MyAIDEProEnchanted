.class public final Landroid/support/v4/media/session/MediaControllerCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;,
        Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a;,
        Landroid/support/v4/media/session/MediaControllerCompat$a;,
        Landroid/support/v4/media/session/MediaControllerCompat$a$a;,
        Landroid/support/v4/media/session/MediaControllerCompat$a$b;,
        Landroid/support/v4/media/session/MediaControllerCompat$a$c;,
        Landroid/support/v4/media/session/MediaControllerCompat$b;,
        Landroid/support/v4/media/session/MediaControllerCompat$c;,
        Landroid/support/v4/media/session/MediaControllerCompat$d;,
        Landroid/support/v4/media/session/MediaControllerCompat$e;,
        Landroid/support/v4/media/session/MediaControllerCompat$f;
    }
.end annotation


# instance fields
.field private final DW:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private final FH:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/support/v4/media/session/MediaControllerCompat$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Landroid/support/v4/media/session/MediaControllerCompat$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat;->FH:Ljava/util/HashSet;

    if-eqz p2, :cond_38

    iput-object p2, p0, Landroid/support/v4/media/session/MediaControllerCompat;->DW:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1c

    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$d;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$d;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    :goto_19
    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat;->j6:Landroid/support/v4/media/session/MediaControllerCompat$b;

    goto :goto_37

    :cond_1c
    const/16 v1, 0x17

    if-lt v0, v1, :cond_26

    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$c;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$c;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    goto :goto_19

    :cond_26
    const/16 v1, 0x15

    if-lt v0, v1, :cond_30

    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    goto :goto_19

    :cond_30
    new-instance p1, Landroid/support/v4/media/session/MediaControllerCompat$e;

    invoke-direct {p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$e;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat;->j6:Landroid/support/v4/media/session/MediaControllerCompat$b;

    :goto_37
    return-void

    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sessionToken must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_41

    :goto_40
    throw p1

    :goto_41
    goto :goto_40
.end method


# virtual methods
.method public j6(Landroid/view/KeyEvent;)Z
    .registers 3

    if-eqz p1, :cond_9

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat;->j6:Landroid/support/v4/media/session/MediaControllerCompat$b;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$b;->j6(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "KeyEvent may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
