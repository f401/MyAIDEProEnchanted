.class public Lorg/codehaus/groovy/tools/shell/util/Preferences;
.super Ljava/lang/Object;


# static fields
.field public static DW:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

.field private static final j6:Ljava/util/prefs/Preferences;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    const-string v1, "/org/codehaus/groovy/tools/shell"

    invoke-virtual {v0, v1}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/tools/shell/util/Preferences;->j6:Ljava/util/prefs/Preferences;

    sget-object v1, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->DW:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

    iget-object v1, v1, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->v5:Ljava/lang/String;

    const-string v2, "verbosity"

    invoke-virtual {v0, v2, v1}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_16
    invoke-static {v0}, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->j6(Ljava/lang/String;)Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/tools/shell/util/Preferences;->DW:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1c} :catch_1d

    goto :goto_27

    :catch_1d
    move-exception v0

    sget-object v0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->DW:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

    sput-object v0, Lorg/codehaus/groovy/tools/shell/util/Preferences;->DW:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

    sget-object v0, Lorg/codehaus/groovy/tools/shell/util/Preferences;->j6:Ljava/util/prefs/Preferences;

    invoke-virtual {v0, v2}, Ljava/util/prefs/Preferences;->remove(Ljava/lang/String;)V

    :goto_27
    new-instance v0, Lorg/codehaus/groovy/tools/shell/util/Preferences$1;

    invoke-direct {v0}, Lorg/codehaus/groovy/tools/shell/util/Preferences$1;-><init>()V

    invoke-static {v0}, Lorg/codehaus/groovy/tools/shell/util/Preferences;->j6(Ljava/util/prefs/PreferenceChangeListener;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6(Ljava/util/prefs/PreferenceChangeListener;)V
    .registers 2

    sget-object v0, Lorg/codehaus/groovy/tools/shell/util/Preferences;->j6:Ljava/util/prefs/Preferences;

    invoke-virtual {v0, p0}, Ljava/util/prefs/Preferences;->addPreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V

    return-void
.end method
